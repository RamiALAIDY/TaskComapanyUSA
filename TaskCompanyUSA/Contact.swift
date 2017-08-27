//
//  ContactModel.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import Foundation
import ObjectMapper
class Contact : Mappable{
    
   
    var id : Int?
    var name : String?
    var ipAdress : Int?
    var deviceIPSubnetMask : NSNull?
    var model : ContactModel?
    var status : ContactStatus?
    
    required init?(map: Map) {
        
    }
    init?() {
    }
    // Mappable
    func mapping(map: Map) {
        
        id <- map["id"]
        name <- map["department"]
        ipAdress <- map["ipAdress"]
        deviceIPSubnetMask <- map["deviceIPSubnetMask"]
        model  <- map["model"]
        status <- map["status"]
        
        
        
        
}
}
