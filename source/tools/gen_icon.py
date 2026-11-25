from PIL import Image, ImageDraw
import math

S = 1024
img = Image.new('RGBA', (S, S), (0,0,0,0))
d = ImageDraw.Draw(img)

# ---- 背景：圆角方形渐变（深蓝到青）----
BG_TOP = (18, 32, 56)
BG_BOT = (10, 74, 96)
radius = int(S*0.22)
for y in range(S):
    t = y / (S-1)
    r = int(BG_TOP[0]*(1-t) + BG_BOT[0]*t)
    g = int(BG_TOP[1]*(1-t) + BG_BOT[1]*t)
    b = int(BG_TOP[2]*(1-t) + BG_BOT[2]*t)
    d.line([(0,y),(S,y)], fill=(r,g,b,255))

# 圆角遮罩
mask = Image.new('L', (S,S), 0)
ImageDraw.Draw(mask).rounded_rectangle([0,0,S-1,S-1], radius=radius, fill=255)
img.putalpha(mask)

d = ImageDraw.Draw(img)

def rounded_box(draw, box, r, fill=None, outline=None, width=0):
    draw.rounded_rectangle(box, radius=r, fill=fill, outline=outline, width=width)

# ---- 窗口（Windows 标志性四格 + 窗口边框）----
cx, cy = S//2, int(S*0.42)
win_w, win_h = int(S*0.56), int(S*0.40)
x0, y0 = cx - win_w//2, cy - win_h//2
x1, y1 = x0 + win_w, y0 + win_h

# 窗口主体
rounded_box(d, [x0, y0, x1, y1], int(S*0.045), fill=(245, 250, 255, 255))

# 标题栏
bar_h = int(S*0.085)
rounded_box(d, [x0, y0, x1, y0+bar_h+int(S*0.045)], int(S*0.045), fill=(30, 150, 190, 255))
d.rectangle([x0, y0+bar_h, x1, y0+bar_h+int(S*0.045)], fill=(30, 150, 190, 255))
# 标题栏三个圆点
dot_r = int(S*0.013)
dot_y = y0 + bar_h//2
for i, col in enumerate([(255,95,86),(255,189,46),(39,201,63)]):
    dx = x0 + int(S*0.035) + i*int(S*0.038)
    d.ellipse([dx-dot_r, dot_y-dot_r, dx+dot_r, dot_y+dot_r], fill=col)

# ---- 四格（仿窗口分屏，非微软 logo）----
gw = int(win_w*0.30)
gh = int(win_h*0.30)
gx = cx - gw - int(S*0.012)
gy = y0 + bar_h + int(S*0.055)
gap = int(S*0.014)
sq = int(S*0.020)
for r in range(2):
    for c in range(2):
        bx = gx + c*(gw+gap)
        by = gy + r*(gh+gap)
        rounded_box(d, [bx, by, bx+gw, by+gh], sq, fill=(30,150,190,255))

# ---- 键盘（底部）----
kb_w, kb_h = int(S*0.62), int(S*0.20)
kx0 = cx - kb_w//2
ky0 = int(S*0.70)
kx1, ky1 = kx0+kb_w, ky0+kb_h

rounded_box(d, [kx0, ky0, kx1, ky1], int(S*0.030), fill=(240, 246, 252, 235))

# 键位小格
keys_per_row = 7
rows = 2
pad = int(S*0.018)
kw = (kb_w - pad*2 - (keys_per_row-1)*int(S*0.010)) // keys_per_row
kh = int((kb_h - pad*2 - (rows-1)*int(S*0.010)) // rows)
for r in range(rows):
    for c in range(keys_per_row):
        bx = kx0 + pad + c*(kw+int(S*0.010))
        by = ky0 + pad + r*(kh+int(S*0.010))
        # 空格键占位
        if r == rows-1 and c in (2,3,4):
            continue
        rounded_box(d, [bx, by, bx+kw, by+kh], int(S*0.008), fill=(70, 110, 140, 255))
# 空格键
sx = kx0 + pad + 2*(kw+int(S*0.010))
sw = kw*3 + 2*int(S*0.010)
rounded_box(d, [sx, ky0+pad+(rows-1)*(kh+int(S*0.010)), sx+sw, ky0+pad+(rows-1)*(kh+int(S*0.010))+kh],
            int(S*0.008), fill=(70, 110, 140, 255))

# ---- 悬浮光点装饰（原创几何）----
for (px, py, pr, a) in [(int(S*0.16),int(S*0.16),int(S*0.030),90),
                        (int(S*0.86),int(S*0.22),int(S*0.022),70),
                        (int(S*0.80),int(S*0.88),int(S*0.026),60)]:
    ov = Image.new('RGBA',(S,S),(0,0,0,0))
    od = ImageDraw.Draw(ov)
    od.ellipse([px-pr,py-pr,px+pr,py+pr], fill=(120,220,240,a))
    img = Image.alpha_composite(img, ov)

img.save('/tmp/icon_new/icon_1024.png')
print('saved 1024')
