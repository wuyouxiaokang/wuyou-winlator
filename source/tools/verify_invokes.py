import sys, re
from loguru import logger
logger.remove()
from androguard.core.dex import DEX

INV={'invoke-virtual','invoke-super','invoke-direct','invoke-static','invoke-interface',
     'invoke-virtual/range','invoke-super/range','invoke-direct/range','invoke-static/range','invoke-interface/range'}

def np(desc):
    ins=desc[desc.index('(')+1:desc.rindex(')')].replace(' ','')
    n=0;i=0
    while i<len(ins):
        c=ins[i]
        if c=='[': i+=1; continue
        if c=='L': i=ins.index(';',i)+1; n+=1
        elif c in 'JD': i+=1; n+=2
        else: i+=1; n+=1
    return n

def main(path, only=None):
    d=DEX(open(path,'rb').read()); bad=checked=0
    for c in d.get_classes():
        cn=c.get_name()
        if only and not any(cn.startswith(p) for p in only): continue
        for m in c.get_methods():
            code=m.get_code()
            if not code: continue
            for ins in code.get_bc().get_instructions():
                nm=ins.get_name()
                if nm not in INV: continue
                out=ins.get_output().strip()
                if '->' not in out: continue
                k=out.rfind(', L')
                if k<0: continue
                rp=out[:k].strip(); ref=out[k+2:].strip()
                if '...' in rp or ('..' in rp and not rp.startswith('{')):
                    a,b=re.findall(r'v(\d+)',rp); nreg=int(b)-int(a)+1
                elif rp.startswith('{'):
                    inner=rp.strip('{}').strip()
                    if '..' in inner or '...' in inner:
                        a,b=re.findall(r'v(\d+)',inner); nreg=int(b)-int(a)+1
                    else: nreg=len([x for x in inner.split(',') if x.strip()])
                else:
                    nreg=len([x for x in rp.split(',') if x.strip()])
                desc=ref[ref.index('('):]
                need=np(desc)+(0 if nm.startswith('invoke-static') else 1)
                checked+=1
                if nreg!=need:
                    print('MISMATCH %s->%s regs=%d need=%d %s'%(cn.split('/')[-1],m.get_name(),nreg,need,ref.split('->')[-1][:60]))
                    bad+=1
    print('checked:',checked,'mismatch:',bad)
    return bad

if __name__=='__main__':
    sys.exit(1 if main(sys.argv[1], sys.argv[2].split(',') if len(sys.argv)>2 else None) else 0)
