//
//  OperatorsPageOne.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//


import UIKit
import ObjectMapper

class OperatorPageOne :NSObject {
    
    class func GetAllContact(_ completion:@escaping (_ isSuccess:Bool,_ StudentsModel : ServerModel? ) -> Void){
        
        Communicator.performAsyncRequest(httpMethod: .get, parameters: nil,completionClouser: { (isSucess, error, response, message) in
            
            let responseDic = response as! Dictionary<String,Any>
            
            if isSucess && response != nil{
                
                if  !(responseDic["countBus"] is NSNull){
                    
                    
                    //  let currentJson = Mapper<AllStudents>.map(responseDic)            }
                    let school = ServerModel(JSON: responseDic)
                    
                    
                    completion (true, school)
                    return
                    
                }
            }
            
            completion(false,nil)
            
            
            
        })
        
        
        
    }
    
   }
