ZXMorse_Swift
=============
![screen](https://raw.githubusercontent.com/zhangxigithub/ZXMorse_Swift/master/sceenshot.png)

`
let morse = ZXMorse()

println(morse.encode("zhangxi.me"))
//--.. .... .- -. --. -..- .. .-.-.- -- . 
println(morse.encode("SOS"))
//... --- ... 
println(morse.encode("SOS",separator:"/"))
//.../---/.../
println(morse.decode(["-","---.."]))
//[T, 8]

println(morse.decode("- ---..",separator:" "))
//T 8 
`
