//
//  ContantServerCell.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import UIKit

import WCLShineButton
import M13Checkbox

class ContantServerCell: UITableViewCell {

    @IBOutlet weak var imgserver: UIImageView!
    @IBOutlet weak var imge1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var StatusLabel: UILabel!
    @IBOutlet weak var checkbox: M13Checkbox!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        var param1 = WCLShineParams()
        param1.bigShineColor = UIColor(rgb: (255,95,89))
        param1.smallShineColor = UIColor(rgb: (216,152,148))
        param1.shineCount = 15
        param1.smallShineOffsetAngle = -5
        let bt1 = WCLShineButton(frame: .init(x: 10, y: 300 , width: imge1.frame.width, height: imge1.frame.height - 5 ), params: param1)
        bt1.fillColor = UIColor(rgb: (255,95,89))
        bt1.color = UIColor(rgb: (170,170,170))
        bt1.image = .heart
        bt1.addTarget(self, action: #selector(action), for: .touchUpInside)
        imge1.addSubview(bt1)
        
        var param2 = WCLShineParams()
        param2.bigShineColor = UIColor(rgb: (255,95,89))
        param2.smallShineColor = UIColor(rgb: (216,152,148))
        param2.shineCount = 15
        param2.smallShineOffsetAngle = -5
        let bt2 = WCLShineButton(frame: .init(x: 120 , y: 300 , width: imge1.frame.width, height: imge1.frame.height - 5 ), params: param2)
        bt2.fillColor = UIColor(rgb: (255,95,89))
        bt2.color = UIColor(rgb: (170,170,170))
        bt2.image = .like
        bt2.addTarget(self, action: #selector(action), for: .touchUpInside)
        img2.addSubview(bt2)

        var param3 = WCLShineParams()
        param3.bigShineColor = UIColor(rgb: (255,95,89))
        param3.smallShineColor = UIColor(rgb: (216,152,148))
        param3.shineCount = 15
        param3.smallShineOffsetAngle = -5
        let bt3 = WCLShineButton(frame: .init(x: img3.frame.minX, y: img3.frame.minY , width: imge1.frame.width, height: imge1.frame.height - 5 ), params: param3)
        bt3.fillColor = UIColor(rgb: (255,95,89))
        bt3.color = UIColor(rgb: (170,170,170))
        bt3.image = .smile
        bt3.addTarget(self, action: #selector(action), for: .touchUpInside)
        img2.addSubview(bt3)
        
        var param4 = WCLShineParams()
        param4.bigShineColor = UIColor(rgb: (255,95,89))
        param4.smallShineColor = UIColor(rgb: (216,152,148))
        param4.shineCount = 15
        param4.smallShineOffsetAngle = -5
        let bt4 = WCLShineButton(frame: .init(x: img4.frame.minX, y: img4.frame.minY , width: imge1.frame.width, height: imge1.frame.height - 5 ), params: param4)
        bt4.fillColor = UIColor(rgb: (255,95,89))
        bt4.color = UIColor(rgb: (170,170,170))
        bt4.image = .star
        bt4.addTarget(self, action: #selector(action), for: .touchUpInside)
        img2.addSubview(bt4)

        
        
        
        imgserver.layer.cornerRadius = self.imgserver.frame.size.height / 2
        StatusLabel.layer.cornerRadius = 8
        StatusLabel.clipsToBounds = true
        
        checkbox.backgroundColor = UIColor.red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
