#!/usr/bin/env python3
"""
校验 smali 中跨类字段访问的权限合法性。
抓 PRIVATE/PACKAGE ACCESS：外部类访问 private 字段会触发 IllegalAccessError。

用法: python3 verify_access.py <smali目录>
"""
import sys, re, glob, os

def class_of(text):
    m = re.search(r'^\.class[^\n]*?(L[\w/$]+;)', text, re.M)
    return m.group(1) if m else None

def parse_fields(smali_dir):
    fields = {}
    for p in glob.glob(os.path.join(smali_dir, '**/*.smali'), recursive=True):
        s = open(p, encoding='utf-8', errors='replace').read()
        cls = class_of(s)
        if not cls: continue
        d = fields.setdefault(cls, {})
        for line in s.splitlines():
            if not line.startswith('.field'): continue
            m = re.match(r'\.field\s+([^:]+):(\S+)', line)
            if not m: continue
            mods = m.group(1).split()
            if not mods: continue
            name = mods[-1]
            if 'private' in mods: lvl = 'private'
            elif 'protected' in mods: lvl = 'protected'
            elif 'public' in mods: lvl = 'public'
            else: lvl = 'package'
            d[name] = lvl
    return fields

def main(smali_dir):
    fields = parse_fields(smali_dir)
    issues = 0
    for p in glob.glob(os.path.join(smali_dir, '**/*.smali'), recursive=True):
        s = open(p, encoding='utf-8', errors='replace').read()
        cur = class_of(s)
        if not cur: continue
        cur_pkg = cur[:cur.rindex('/')]
        for am in re.finditer(
            r'(?:s?get|s?put)-(?:object|boolean|byte|char|short|int|long|wide)\s+[^\n]*?(L[\w/$]+;)->([\w$]+):', s):
            target, fname = am.group(1), am.group(2)
            if target not in fields or fname not in fields[target]: continue
            lvl = fields[target][fname]
            if lvl == 'private' and target != cur:
                print('PRIVATE ACCESS: %s -> %s.%s' % (cur, target, fname))
                issues += 1
            elif lvl == 'package' and target[:target.rindex('/')] != cur_pkg:
                print('PACKAGE ACCESS: %s -> %s.%s' % (cur, target, fname))
                issues += 1
    print('access issues:', issues)
    return issues

if __name__ == '__main__':
    sys.exit(1 if main(sys.argv[1]) else 0)
