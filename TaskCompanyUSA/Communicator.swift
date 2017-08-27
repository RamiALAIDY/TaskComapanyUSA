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
        
        let fullURL = API.BaseURL
        
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
        let credentialData = "\(user):\(password)".data(using: String.Encoding.utf8)!
        let base64Credentials = credentialData.base64EncodedString(options: [])
        let headers = ["Authorization": "Basic \(base64Credentials)"]
        Alamofire.request(fullURL, method: http,parameters : nil, encoding: URLEncoding.default,headers: headers).validate().responseJSON { (_ response) in
            
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
