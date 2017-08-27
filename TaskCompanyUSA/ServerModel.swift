//
//  ServerModel.swift
//  TaskCompanyUSA
//
//  Created by rami alaidy on 8/26/17.
//  Copyright © 2017 rami alaidy. All rights reserved.
//

import Foundation
import ObjectMapper
class ServerModel : Mappable{
    
    var content: Array<ContactModel>?
    var totalPages: Int?
    var totalElements : Int?
     var last: Bool?
     var sort: Int?
    var numberOfElements : Int?
    var first: Bool?
    
    var size : Int?
    var number : Int?
    
    
    
    required init?(map: Map) {
        
    }
    init?() {
    }
    // Mappable
    func mapping(map: Map) {
        
        content <- map["content"]
        totalPages <- map["totalPages"]
        totalElements <- map["totalElements"]
        last <- map["last"]
        sort  <- map["sort"]
        numberOfElements <- map["numberOfElements"]
        first <- map["first"]
        size <- map["size"]
        number <- map["number"]
        
}
}
