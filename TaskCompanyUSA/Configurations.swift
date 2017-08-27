//
//  Configurations.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import UIKit

func generatColor(_ color: Int)->UIColor?{
    switch(color % 4){
        
    case 0:return Colors.Blue
    case 1:return Colors.Red
    case 2:return Colors.Yellow
    case 3:return Colors.Green
    default : return Colors.Blue
    }
}

struct Colors {
    // Common
    static let Blue     = UIColor(red: 114/255.0, green: 188/255.0, blue: 202/255.0, alpha: 1.0)
    static let Red      = UIColor(red: 241/255.0, green: 129/255.0, blue: 91/255.0, alpha: 1.0)
    static let Yellow   = UIColor(red: 240/255.0, green: 205/255.0, blue: 66/255.0, alpha: 1.0)
    static let Green    = UIColor(red: 120/255.0, green: 186/255.0, blue: 108/255.0, alpha: 1.0)
    static let Black    = UIColor(red: 23.0/255.0, green: 23.0/255.0, blue: 23.0/255.0, alpha: 1)
}
struct Fonts {
    static func getFont(size:Int) -> UIFont {
        
        let font = UIFont(name: "Hacen Tunisia Lt", size: 17)
        return font!
    }
}



