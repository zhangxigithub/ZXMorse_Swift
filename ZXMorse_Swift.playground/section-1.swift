// ZXMorse

import Cocoa

class ZXMorse
{
    let table = ["A":".-",
                "B":"-...",
                "C":"-.-.",
                "D":"-..",
                "E":".",
                "F":"..-.",
                "G":"--.",
                "H":"....",
                "I":"..",
                "J":".---",
                "K":"-.-",
                "L":".-..",
                "M":"--",
                "N":"-.",
                "O":"---",
                "P":".--.",
                "Q":"--.-",
                "R":".-.",
                "S":"...",
                "T":"-",
                "U":"..-",
                "V":"...-",
                "W":".--",
                "X":"-..-",
                "Y":"-.--",
                "Z":"--..",
                "0":"-----",
                "1":".----",
                "2":"..---",
                "3":"...--",
                "4":"....-",
                "5":".....",
                "6":"-....",
                "7":"--...",
                "8":"---..",
                "9":"----.",
                ".":".-.-.-",
                ":":"---...",
                ",":"--..--",
                ";":"-.-.-.",
                "?":"..--..",
                "=":"-...-",
                "'":".----.",
                "/":"-..-.",
                "!":"-.-.--",
                "-":"-....-",
                "_":"..--.-",
                "\"":".-..-.",
                "(":"-.--.",
                ")":"-.--.-",
                "$":"...-..-",
                "&":".-...",
                "@":".--.-.",
                "+":".-.-."]
    

    func encode(text:String,separator:String)->String
    {
        var result = ""
        for char in text.uppercaseString
        {
            result += table[String(char)]!
            result += separator
        }
        return result
    }
    
    
    func encode(text:String)->String
    {
        return self.encode(text, separator:" ")
    }
    
    func decode(text:String[])->String[]
    {
        var result:String[] = String[]()
        for char in text
        {
            for (key,value) in table
            {
                if value == char
                {
                    result.append(key)
                    break
                }
            }
        }
        return result
    }
    func decode(text:String,separator:String)->String
    {
        let array = text.componentsSeparatedByString(separator)
        let resultArray = self.decode(array)
        var result = ""
        for char in resultArray
        {
            result += char
            result += separator
        }
        return result
    }
    
}

let morse = ZXMorse()

println(morse.encode("zhangxi"))
println(morse.encode("e"))
println(morse.encode("E"))
println(morse.encode("T"))
println(morse.decode(["-","---.."]))
println(morse.decode("- ---..",separator:" "))










