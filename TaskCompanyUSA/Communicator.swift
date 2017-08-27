//
//  Communicator.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import Foundation
import Alamofire


class Communicator: NSObject {
    
    public enum CommunicatorHTTPMethod: Int {
        case get     = 0
        case post    = 1
    }
    
    class func performAsyncRequest(httpMethod: CommunicatorHTTPMethod,
                                  
                                   parameters:Dictionary<String, Any>?,
                                   target: UIViewController? = nil,
                                   showHUD: Bool = false,
                                   completionClouser:@escaping (_ isSuccess:Bool, _ error:Error? ,_ response:Any?, _ message:String?) -> Void){
        
        //let fullURL = API
        
        var http:HTTPMethod
        
        switch httpMethod {
        case .get:
            http = .get
        case .post:
            http = .post
        }
        // Show Indecator while loading JSON
        let user = "admin@boot.com"
        let password = "admin"
        
       
        
        let credential = URLCredential(user: user, password: password, persistence: .forSession)
        Alamofire.request( "http://34.208.106.205:8080/api/machine?page=0&size=10/\(user)/\(password)")
            .authenticate(usingCredential: credential)
            .responseJSON { (_ response) in
            
                
            if response.error != nil {
                // Error
                completionClouser(false, response.error! ,nil, (response.error?.localizedDescription)!)
            }
            else{
                completionClouser(true, nil, response.result.value, nil)
            }
        }

}
}
