//
//  ContactModel.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import Foundation
import ObjectMapper
class ContactModel : Mappable{
    
  
    var id : Int?
    var name : String?
    var creationDate : Int?
    var expiryDate : NSNull?
    var status : StatusModel?
    
    
    required init?(map: Map) {
        
    }
    init?() {
    }
    // Mappable
    func mapping(map: Map) {
        
        id <- map["id"]
        name <- map["name"]
        creationDate <- map["creationDate"]
        expiryDate <- map["expiryDate"]
        
        
        
        
        
}
}
