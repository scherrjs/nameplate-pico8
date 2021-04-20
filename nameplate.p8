pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
function _init()
 --code here happens one time
 --when your game starts
 cls(2)
end
-->8
function _update()
 --code here happens 30 times
 --every second
end
-->8
function _draw()
	--code here also happens 30
	--times every second, but
	--after _update() happens.
 circfill(64,86,22,10)
 rectfill(0,86,127,127,1)
 rectfill(58,86,71,127,9)
 curve(8,86,9)
 wave(37,106,1)
 wave(39,103,9)
 wave(30,100,1)
 wave(31,97,9)
 wave(25,94,1)
 wave(25,91,9)
 wave(45,109,9)
 wave(43,112,1)
 wave(50,115,9)
 wave(47,118,1)
 wave(55,121,9)
 wave(48,124,1)
 wave(59,127,9)
 wave(90,106,1)
 wave(88,103,9)
 wave(97,100,1)
 wave(96,97,9)
 wave(102,94,1)
 wave(102,91,9)
 wave(82,109,9)
 wave(84,112,1)
 wave(77,115,9)
 wave(80,118,1)
 wave(72,121,9)
 wave(79,124,1)
 wave(68,127,9)
 star2(27,43,7)
 star2(86,12,7)
 star2(37,20,7)
 star2(113,70,7)
 star2(98,56,7)
 star2(108,36,7)
 star2(121,8,7)
 star2(18,65,7)
 star2(35,76,7)
 star2(6,81,7)
 star2(48,54,7)
 star2(10,30,7)
 star2(20,10,7)
 star2(56,14,7)
 star2(54,36,7)
 star2(96,81,7)
 star1(117,49,12)
 star1(40,30,12)
 star1(8,56,12)
 star1(5,12,12)
 star1(108,18,12)
 star1(78,60,12)
 star1(74,24,12)
 star1(122,80,12)
 star1(24,75,12)
 print("joshua scherrer",34,45,8)
 print("joshua scherrer",34,44,9)
 print("joshua scherrer",34,43,10)
 print("joshua scherrer",34,42,11)
 print("joshua scherrer",34,41,12)
 print("joshua scherrer",34,40,0)
end
-->8
function star1(x,y,hue)
 pset(x,y-2,hue)
 pset(x,y-3,hue)
 pset(x,y+2,hue)
 pset(x,y+3,hue)
 pset(x-2,y,hue)
 pset(x-3,y,hue)
 pset(x+2,y,hue)
 pset(x+3,y,hue)
 pset(x-1,y-1,hue)
 pset(x+1,y-1,hue)
 pset(x-1,y+1,hue)
 pset(x+1,y+1,hue)
 
end
-->8
function star2(x,y,hue)
 pset(x,y,hue)
 pset(x-1,y-1,hue)
 pset(x-1,y+1,hue)
 pset(x+1,y-1,hue)
 pset(x+1,y+1,hue)
 
end
-->8
function curve(x,y,hue)
 line(x,y,127-x,y,hue)
 for i=1,42 do
  line(x+curvert(i),y+i,127-x-curvert(i),y+i,hue)
 end
end 
-->8
function curvert(x)
 return 38/sqrt(26)*sqrt(x)
end
-->8
function wave(x,y,hue)
 rectfill(x-6,y-1,x+6,y+1,hue)
 line(x-8,y,x+8,y,hue)
end
