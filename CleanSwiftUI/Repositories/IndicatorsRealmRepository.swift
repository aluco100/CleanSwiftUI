//
//  IndicatorsRealmRepository.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import Foundation
import RealmSwift

class IndicatorsRealmRepository: IndicatorsStoreProtocol {
    
    //MARK: - Store implementation
    func fetchIndicators(completion: @escaping IndicatorStoreCompletionHandler) {
        do {
            let realm = try Realm()
            let objects = realm.objects(Indicators.self).sorted(byKeyPath: "fecha", ascending: false)
            if let first = objects.first{
                completion(IndicatorStoreResult.success(result: first))
            }
        } catch let error {
            completion(IndicatorStoreResult.failure(error: error))
        }
    }
    
}
