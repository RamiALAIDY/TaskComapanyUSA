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
    @IBOutlet weak var NameServerLabel: UILabel!
    @IBOutlet weak var StatusLAbel: UILabel!
   
    @IBOutlet weak var ViewStatusColor: UIView!
    @IBOutlet weak var ViewRadios: UIView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        ViewStatusColor.layer.cornerRadius = ViewStatusColor.layer.frame.size.height / 2 
        ViewStatusColor.clipsToBounds = true
        ViewRadios.layer.cornerRadius = ViewRadios.layer.frame.size.height / 2
        ViewRadios.clipsToBounds = true
        
        imgserver.layer.cornerRadius = self.imgserver.frame.size.height / 2
        StatusLabel.layer.cornerRadius = 8
        StatusLabel.clipsToBounds = true
        
//        var param1 = WCLShineParams()
//        param1.bigShineColor = UIColor(rgb: (153,152,38))
//        param1.smallShineColor = UIColor(rgb: (102,102,102))
//        let bt1 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height: 36), params: param1)
//        bt1.fillColor = UIColor(rgb: (153,152,38))
//        bt1.color = UIColor(rgb: (170,170,170))
//        bt1.addTarget(self, action: #selector(action), for: .touchUpInside)
//        bt1.image = .yes
//        imge1.addSubview(bt1)
//        
//        var param2 = WCLShineParams()
//        param2.bigShineColor = UIColor(rgb: (153,152,38))
//        param2.smallShineColor = UIColor(rgb: (102,102,102))
//        
//        let bt2 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height:36), params: param2)
//        bt2.fillColor = UIColor(rgb: (153,152,38))
//        bt2.color = UIColor(rgb: (170,170,170))
//        bt2.addTarget(self, action: #selector(action), for: .touchUpInside)
//        bt2.image = .phone
//        img2.addSubview(bt2)
//        
//        var param3 = WCLShineParams()
//        param3.bigShineColor = UIColor(rgb: (153,152,38))
//        param3.smallShineColor = UIColor(rgb: (102,102,102))
//        let bt3 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height: 36), params: param1)
//        bt3.fillColor = UIColor(rgb: (153,152,38))
//        bt3.color = UIColor(rgb: (170,170,170))
//        bt3.addTarget(self, action: #selector(action), for: .touchUpInside)
//        bt3.image = .clock
//        img3.addSubview(bt3)
//        
//        var param4 = WCLShineParams()
//        param4.bigShineColor = UIColor(rgb: (253,52,38))
//        param4.smallShineColor = UIColor(rgb: (132,02,202))
//        let bt4 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height: 36), params: param1)
//        bt4.fillColor = UIColor(rgb: (153,152,38))
//        bt4.color = UIColor(rgb: (170,170,170))
//        bt4.addTarget(self, action: #selector(action), for: .touchUpInside)
//        bt4.image = .silent
//        img4.addSubview(bt4)



        
        //checkbox.backgroundColor = UIColor.red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
