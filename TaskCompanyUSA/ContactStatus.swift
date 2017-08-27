//
//  ContactStatus.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import Foundation
import ObjectMapper
class ContactStatus : Mappable{
    
    
    var id : Int?
    
    required init?(map: Map) {
        
    }
    init?() {
    }
    // Mappable
    func mapping(map: Map) {
        
        id <- map["id"]
               
        
        
    }
}
