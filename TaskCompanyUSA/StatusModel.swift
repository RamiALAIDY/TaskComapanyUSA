//
//  StatusModel.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/27/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//


import Foundation
import ObjectMapper
class StatusModel : Mappable{
    
    
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
