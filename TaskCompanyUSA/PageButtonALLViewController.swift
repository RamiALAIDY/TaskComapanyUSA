//
//  PageButtonALLViewController.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/27/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import UIKit
import WCLShineButton
class PageButtonALLViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib.init(nibName: "ContantServerCell", bundle: Bundle.main), forCellReuseIdentifier: "ContantServerCell")
        // Do any additional setup after loading the view.
        
//        var param1 = WCLShineParams()
//        param1.bigShineColor = UIColor(rgb: (153,152,38))
//        param1.smallShineColor = UIColor(rgb: (102,102,102))
//        let bt1 = WCLShineButton(frame: .init(x: 100, y: 100, width: 60, height: 60), params: param1)
//        bt1.isSelected = true
//        bt1.fillColor = UIColor(rgb: (153,152,38))
//        bt1.color = UIColor(rgb: (170,170,170))
//        bt1.addTarget(self, action: #selector(action), for: .touchUpInside)
//        view.addSubview(bt1)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContantServerCell", for: indexPath) as! ContantServerCell
        cell.imgserver.layer.cornerRadius = cell.imgserver.frame.size.height / 2
        cell.imgserver.clipsToBounds = true
        
        var param1 = WCLShineParams()
        param1.bigShineColor = UIColor(rgb: (255,95,89))
        param1.smallShineColor = UIColor(rgb: (216,152,148))
        param1.shineCount = 15
        param1.smallShineOffsetAngle = -5
        let bt1 = WCLShineButton(frame: .init(x: cell.imge1.frame.minX, y: cell.imge1.frame.minY , width: cell.imge1.frame.width, height: cell.imge1.frame.height - 5 ), params: param1)
        bt1.fillColor = UIColor(rgb: (255,95,89))
        bt1.color = UIColor(rgb: (170,170,170))
        bt1.image = .star
        bt1.addTarget(self, action: #selector(action), for: .touchUpInside)
        cell.imge1.addSubview(bt1)
        
        var param2 = WCLShineParams()
        param2.bigShineColor = UIColor(rgb: (255,95,89))
        param2.smallShineColor = UIColor(rgb: (216,152,148))
        param2.shineCount = 15
        param2.smallShineOffsetAngle = -5
        let bt2 = WCLShineButton(frame: .init(x: cell.img2.frame.minX, y: cell.img2.frame.minY , width: cell.imge1.frame.width, height: cell.imge1.frame.height - 5 ), params: param2)
        bt2.fillColor = UIColor(rgb: (255,95,89))
        bt2.color = UIColor(rgb: (170,170,170))
        bt2.image = .like
        bt2.addTarget(self, action: #selector(action), for: .touchUpInside)
        cell.img2.addSubview(bt2)
        
        var param3 = WCLShineParams()
        param3.bigShineColor = UIColor(rgb: (255,95,89))
        param3.smallShineColor = UIColor(rgb: (216,152,148))
        param3.shineCount = 15
        param3.smallShineOffsetAngle = -5
        let bt3 = WCLShineButton(frame: .init(x: cell.img3.frame.minX, y: cell.img3.frame.minY , width: cell.imge1.frame.width, height: cell.imge1.frame.height - 5 ), params: param3)
        bt3.fillColor = UIColor(rgb: (255,95,89))
        bt3.color = UIColor(rgb: (170,170,170))
        bt3.image = .heart
        bt3.addTarget(self, action: #selector(action), for: .touchUpInside)
        cell.img3.addSubview(bt3)
        
        var param4 = WCLShineParams()
        param4.bigShineColor = UIColor(rgb: (255,95,89))
        param4.smallShineColor = UIColor(rgb: (216,152,148))
        param4.shineCount = 15
        param4.smallShineOffsetAngle = -5
        let bt4 = WCLShineButton(frame: .init(x: cell.img4.frame.minX, y: cell.img4.frame.minY , width: cell.imge1.frame.width, height: cell.imge1.frame.height - 5 ), params: param4)
        bt4.fillColor = UIColor(rgb: (255,95,89))
        bt4.color = UIColor(rgb: (170,170,170))
        bt4.image = .smile
        bt4.addTarget(self, action: #selector(action), for: .touchUpInside)
        cell.img4.addSubview(bt4)
        

    return cell
    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    func action(){
    print("Alaidy")
    }
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        
        
    return 1
    
}// Default is 1 if not implemented

}
