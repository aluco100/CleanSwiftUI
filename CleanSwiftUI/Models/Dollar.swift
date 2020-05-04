//
//  Dollar.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Dollar: Object, Mappable, Identifiable {
    
    var id: UUID = UUID()
    @objc dynamic var codigo: String = ""
    @objc dynamic var nombre: String = ""
    @objc dynamic var unidad_medida: String = ""
    @objc dynamic var fecha: String = ""
    @objc dynamic var valor: Double = 0.0
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        codigo<-map["codigo"]
        nombre<-map["nombre"]
        unidad_medida<-map["unidad_medida"]
        fecha<-map["fecha"]
        valor<-map["valor"]
    }
    
    override class func primaryKey() -> String? {
        return "fecha"
    }
}
