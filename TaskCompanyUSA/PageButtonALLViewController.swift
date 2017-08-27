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
    var optionList : ServerModel?
    var status : StatusModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        
         // API
        OperatorPageOne.GetAllContact { (isSucess, ServerModel) in
            if isSucess{
                
                self.optionList = ServerModel
                self.status = self.optionList?.content?.first?.status
                self.tableView.reloadData()
                
            }
        }

        
       tableView.register(UINib.init(nibName: "HeaderView", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "HeaderView")
        tableView.register(UINib.init(nibName: "ContantServerCell", bundle: Bundle.main), forCellReuseIdentifier: "ContantServerCell")
        // Do any additional setup after loading the view.
        
            }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContantServerCell", for: indexPath) as! ContantServerCell
        cell.imgserver.layer.cornerRadius = cell.imgserver.frame.size.height / 2
        cell.imgserver.clipsToBounds = true
        
        cell.ViewStatusColor.backgroundColor = generatColor(indexPath.row)
        
         //with Api
        
        // Name with Api
        //cell.NameServerLabel.text = optionList?.content?[indexPath.row].name
        
        // status color
        if  status?.id == 1  {
        
        cell.ViewStatusColor.backgroundColor = UIColor.green
            
        }
        else if status?.id == 2{
            
             cell.ViewStatusColor.backgroundColor = UIColor.orange
            

        
        }
        else if status?.id == 3{
            cell.ViewStatusColor.backgroundColor = UIColor.yellow

           
            
        }
        else if status?.id == 4{
            cell.ViewStatusColor.backgroundColor = UIColor.red

            
        }

        
        
        
        
        
        
        
        
        
        
        
        
        
        var param1 = WCLShineParams()
        param1.bigShineColor = UIColor.red
        param1.smallShineColor = UIColor(rgb: (102,102,102))
        let bt1 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height: 36), params: param1)
        bt1.fillColor = UIColor.red
        bt1.color = UIColor(rgb: (170,170,170))
        bt1.addTarget(self, action: #selector(action), for: .touchUpInside)
        bt1.image = .yes
        cell.imge1.addSubview(bt1)
        
        var param2 = WCLShineParams()
        param2.bigShineColor = UIColor(rgb: (153,152,38))
        param2.smallShineColor = UIColor(rgb: (102,102,102))
        
        let bt2 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height:36), params: param2)
        bt2.fillColor = UIColor(rgb: (153,152,38))
        bt2.color = UIColor(rgb: (170,170,170))
        bt2.addTarget(self, action: #selector(action), for: .touchUpInside)
        bt2.image = .phone
        cell.img2.addSubview(bt2)
        
        var param3 = WCLShineParams()
        param3.bigShineColor = UIColor(rgb: (153,152,38))
        param3.smallShineColor = UIColor(rgb: (102,102,102))
        let bt3 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height: 36), params: param1)
        bt3.fillColor = UIColor(rgb: (153,152,38))
        bt3.color = UIColor(rgb: (170,170,170))
        bt3.addTarget(self, action: #selector(action), for: .touchUpInside)
        bt3.image = .clock
        cell.img3.addSubview(bt3)
        
        var param4 = WCLShineParams()
        param4.bigShineColor = UIColor(rgb: (253,52,38))
        param4.smallShineColor = UIColor(rgb: (132,02,202))
        let bt4 = WCLShineButton(frame: .init(x: 0, y: 0, width: 36, height: 36), params: param1)
        bt4.fillColor = UIColor(rgb: (153,152,38))
        bt4.color = UIColor(rgb: (170,170,170))
        bt4.addTarget(self, action: #selector(action), for: .touchUpInside)
        bt4.image = .silent
       
        cell.img4.addSubview(bt4)

        
        

    return cell
    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func action(){
    print("Alaidy")
    }
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
        
        
        // API
//        if let count = optionList?.content?.count{
//            return count
//        }
//        return 0
}
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header:UIView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! UIView

        if section == 0{
      
      header.isHidden = true
            header.removeFromSuperview()
            header.frame.size.height = 0
           return nil
        }
        else{
                header.tag = section
        
        return header
              }
        
    
   
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section != 0{
        return 44
        }
        else{
        return 0
        }
    }
}
