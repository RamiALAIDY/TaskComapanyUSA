//
//  ServersSearchViewController.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/25/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import UIKit

class ServersSearchViewController: UIViewController {
    @IBOutlet weak var ImgLogo: UIImageView!
    @IBOutlet weak var ImgProfile: UIImageView!
    @IBOutlet weak var RedView: UIView!
    
    
    @IBOutlet weak var btuAll: UIButton!
    @IBOutlet weak var Activebtn: UIButton!
 
    @IBOutlet weak var Downbtn: UIButton!
    @IBOutlet weak var btnAllLocation: UIButton!
    @IBOutlet weak var search: UISearchBar!
    
    @IBOutlet weak var GetAllView: UIView!
    @IBOutlet weak var GetDownView: UIView!
    @IBOutlet weak var GetActiveView: UIView!
    @IBOutlet weak var GetAllLocationView: UIView!
    
    var optionList : ServerModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        OperatorPageOne.GetAllContact { (isSucess, ServerModel) in
//            if isSucess{
//            
//            self.optionList = ServerModel
//            
//            
//            }
//        }
        
        
        
        // Do any additional setup after loading the view.
        Desginbutton()
        btuAll.addTarget(self, action: #selector(ServersSearchViewController.btnAll(_:)) , for: .touchUpInside)
        self.selectButton(1)
        
    }

    func Desginbutton(){
        
    ImgProfile.layer.cornerRadius = self.ImgProfile.frame.size.height / 2
        ImgProfile.clipsToBounds = true
        ImgProfile.layer.borderWidth = 1
        ImgProfile.layer.borderColor = UIColor.black.cgColor
        
        
        // Logo
        ImgLogo.layer.cornerRadius = 24
        ImgLogo.clipsToBounds = true
        ImgLogo.layer.borderWidth = 1
        ImgLogo.layer.borderColor = UIColor.black.cgColor
        // Search
        search.layer.cornerRadius = 8
        search.clipsToBounds = true
        
        RedView.layer.cornerRadius = 8
        RedView.clipsToBounds = true
        // Button Filter
        btuAll.layer.cornerRadius = 8
        btuAll.backgroundColor = UIColor.blue
        btuAll.clipsToBounds = true
        
        Activebtn.layer.cornerRadius = 8
        
        Activebtn.clipsToBounds = true
        
        Downbtn.layer.cornerRadius = 8
        Downbtn.clipsToBounds = true
        
        btnAllLocation.layer.cornerRadius = 8
        btnAllLocation.clipsToBounds = true
        
        
        
    }
    @IBAction func btnAll(_ sender: UIButton) {
        GetAllView.alpha = 1
        GetActiveView.alpha = 0
        GetDownView.alpha = 0
        GetAllLocationView.alpha = 0
        self.selectButton(1)
        
    }
    @IBAction func Activebtn(_ sender: UIButton) {
        GetAllView.alpha = 0
        GetActiveView.alpha = 1
        GetDownView.alpha = 0
        GetAllLocationView.alpha = 0
        self.selectButton(2)

    }
    @IBAction func Downbtn(_ sender: UIButton) {
        GetAllView.alpha = 0
        GetActiveView.alpha = 0
        GetDownView.alpha = 1
        GetAllLocationView.alpha = 0
        self.selectButton(3)

    }
    @IBAction func btnAllLocation(_ sender: UIButton) {
        GetAllView.alpha = 0
        GetActiveView.alpha = 0
        GetDownView.alpha = 0
        GetAllLocationView.alpha = 1
        self.selectButton(4)

    }
    
    
    func selectButton(_ index:Int) -> Void {
        if index == 1 {
            btuAll.layer.cornerRadius = 5
            btuAll.setTitleColor(UIColor.white, for: .normal)
            btuAll.backgroundColor = UIColor.blue
            btuAll.layer.borderColor = UIColor.clear.cgColor
            btuAll.layer.borderWidth = 0
            
            Activebtn.layer.cornerRadius = 5
            Activebtn.backgroundColor = UIColor.white
            Activebtn.setTitleColor(UIColor.gray, for: .normal)
            Activebtn.layer.borderWidth = 2
            Activebtn.layer.borderColor = UIColor.gray.cgColor
            
            Downbtn.layer.cornerRadius = 5
            Downbtn.backgroundColor = UIColor.white
            Downbtn.setTitleColor(UIColor.gray, for: .normal)
            Downbtn.layer.borderWidth = 2
            Downbtn.layer.borderColor = UIColor.gray.cgColor

            
            btnAllLocation.layer.cornerRadius = 5
            btnAllLocation.backgroundColor = UIColor.white
            btnAllLocation.setTitleColor(UIColor.gray, for: .normal)
            btnAllLocation.layer.borderWidth = 2
            btnAllLocation.layer.borderColor = UIColor.gray.cgColor

            GetAllView.alpha = 1
            GetActiveView.alpha = 0
            GetDownView.alpha = 0
            GetAllLocationView.alpha = 0
            
            
        }
        else if index == 2{
            Activebtn.layer.cornerRadius = 5
            Activebtn.setTitleColor(UIColor.white, for: .normal)
            Activebtn.backgroundColor = UIColor.blue
            Activebtn.layer.borderColor = UIColor.clear.cgColor
            Activebtn.layer.borderWidth = 0
            
            btuAll.layer.cornerRadius = 5
            btuAll.backgroundColor = UIColor.white
            btuAll.setTitleColor(UIColor.gray, for: .normal)
            btuAll.layer.borderWidth = 2
            btuAll.layer.borderColor = UIColor.gray.cgColor
            
            
            Downbtn.layer.cornerRadius = 5
            Downbtn.backgroundColor = UIColor.white
            Downbtn.setTitleColor(UIColor.gray, for: .normal)
            Downbtn.layer.borderWidth = 2
            Downbtn.layer.borderColor = UIColor.gray.cgColor

            
            btnAllLocation.layer.cornerRadius = 5
            btnAllLocation.backgroundColor = UIColor.white
            btnAllLocation.setTitleColor(UIColor.gray, for: .normal)
            btnAllLocation.layer.borderWidth = 2
            btnAllLocation.layer.borderColor = UIColor.gray.cgColor

    }
        else if index == 3{
        
            Downbtn.layer.cornerRadius = 5
            Downbtn.setTitleColor(UIColor.white, for: .normal)
            Downbtn.backgroundColor = UIColor.blue
            Downbtn.layer.borderColor = UIColor.clear.cgColor
            Downbtn.layer.borderWidth = 0
            
            btuAll.layer.cornerRadius = 5
            btuAll.backgroundColor = UIColor.white
            btuAll.setTitleColor(UIColor.gray, for: .normal)
            btuAll.layer.borderWidth = 2
            btuAll.layer.borderColor = UIColor.gray.cgColor
            
            
            Activebtn.layer.cornerRadius = 5
            Activebtn.backgroundColor = UIColor.white
            Activebtn.setTitleColor(UIColor.gray, for: .normal)
            Activebtn.layer.borderWidth = 2
            Activebtn.layer.borderColor = UIColor.gray.cgColor
            
            
            btnAllLocation.layer.cornerRadius = 5
            btnAllLocation.backgroundColor = UIColor.white
            btnAllLocation.setTitleColor(UIColor.gray, for: .normal)
            btnAllLocation.layer.borderWidth = 2
            btnAllLocation.layer.borderColor = UIColor.gray.cgColor

        
        
        
        
        }
        else if index == 4 {
        btnAllLocation.layer.cornerRadius = 5
        btnAllLocation.setTitleColor(UIColor.white, for: .normal)
        btnAllLocation.backgroundColor = UIColor.blue
        btnAllLocation.layer.borderColor = UIColor.clear.cgColor
        btnAllLocation.layer.borderWidth = 0
        
        btuAll.layer.cornerRadius = 5
        btuAll.backgroundColor = UIColor.white
        btuAll.setTitleColor(UIColor.gray, for: .normal)
        btuAll.layer.borderWidth = 2
        btuAll.layer.borderColor = UIColor.gray.cgColor
        
        
        Activebtn.layer.cornerRadius = 5
        Activebtn.backgroundColor = UIColor.white
        Activebtn.setTitleColor(UIColor.gray, for: .normal)
        Activebtn.layer.borderWidth = 2
        Activebtn.layer.borderColor = UIColor.gray.cgColor
        
        
        Downbtn.layer.cornerRadius = 5
        Downbtn.backgroundColor = UIColor.white
        Downbtn.setTitleColor(UIColor.gray, for: .normal)
        Downbtn.layer.borderWidth = 2
        Downbtn.layer.borderColor = UIColor.gray.cgColor
        
        }
}
}
