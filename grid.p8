pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
mt=0
g=0
d=0
x=64
y=64

function _init()
end

function _update()
if btn(0) then d=1 end
if btn(1) then d=2 end
if btn(2) then d=3 end
if btn(3) then d=4 end
if (g<3 and d<3) or (d>2 and g>2) then
g=d
elseif x%8==0 and y%8==0 then
g=d
end
ox=x
oy=y
mx=x
my=y
if g==1 then
x=x-1
mx=x
end
if g==2 then
x=x+1
mx=x+7
end
if g==3 then
y=y-1
my=y
end
if g==4 then
y=y+1
my=y+7
end
if x<0 then x=0 end
if y<0 then y=0 end
if x>120 then x=120 end
if y>120 then y=120 end

mt=mget(mx/8,my/8)
if fget(mt,0) then
x=ox
y=oy
end
end

function _draw()
cls()
map(0,0,0,0)
spr(1,x,y)
print(x .. " " .. y .. " " .. d .. " " .. g .. " " .. mt)
end

__gfx__
000000000bbbbbb0cccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbbbbbbcccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700bccbbccbcccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000bbbbbbbbcccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000bb2222bbcccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700bbbbbbbbcccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000bbbbbb0cccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000b0000b0cccccccc11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
66606660000066606660000066000000660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
60006060000000600060000006000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66606060000006606660000006000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00606060000000606000000006000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66606660000066606660000066600000666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
70000000077077707070777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000000700070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700000777077707070770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000000007070707770700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
70000000770070700700777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc00000000000bbbbbb0000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc0000000000bbbbbbbb000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc0000000000bccbbccb000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc0000000000bbbbbbbb000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc0000000000bb2222bb000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc0000000000bbbbbbbb000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc00000000000bbbbbb0000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccc00000000cccccccc00000000000b0000b0000000000000000000000000000000cccccccc00000000cccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
00000000cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc0000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
0000000000000000cccccccc000000000000000000000000cccccccc00000000000000000000000000000000cccccccc00000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__gff__
0000010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000020202020203020202020202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000002000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000020002000000000000020002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000020202020302030003020202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0002020202020202000202020202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000020000000200000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
