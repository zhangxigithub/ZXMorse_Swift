//
//  main.swift
//  ZXMorse_demo
//
//  Created by zhangxi on 14-7-18.
//  Copyright (c) 2014年 zhangxi. All rights reserved.
//

import Foundation


let morse = ZXMorse()

println(morse.encode("zhangxi.me"))
println(morse.encode("SOS"))
println(morse.encode("SOS",separator:"/"))
println(morse.decode(["-","---.."]))
println(morse.decode("- ---..",separator:" "))