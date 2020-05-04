//
//  Indicators.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Indicators: Object, Mappable, Identifiable {
    
    var id: UUID = UUID()
    @objc dynamic var version: String = ""
    @objc dynamic var autor: String = ""
    @objc dynamic var fecha: String = ""
    var dollar: Dollar? = nil
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        version<-map["version"]
        autor<-map["autor"]
        fecha<-map["fecha"]
        dollar<-map["dolar"]
    }
    
    override class func primaryKey() -> String? {
        return "fecha"
    }
    
}
