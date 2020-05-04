//
//  IndicatorsAPIRepository.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift
import Alamofire
import AlamofireObjectMapper

class IndicatorAPIRepository: IndicatorsStoreProtocol {
    
    //MARK: - Store Implementation
    
    func fetchIndicators(completion: @escaping IndicatorStoreCompletionHandler) {
        Alamofire.request("https://mindicador.cl/api", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseObject { (response: DataResponse<Indicators>) in
            guard response.error == nil else{
                completion(IndicatorStoreResult.failure(error: response.error!))
                return
            }
            guard let indicators = response.result.value else{
                completion(IndicatorStoreResult.failure(error: NSError(domain: "SwiftUI", code: 400, userInfo: nil)))
                return
            }
            do{
                let realm = try Realm()
                try realm.write {
                    realm.add(indicators, update: .all)
                }
            }catch let error{
                print(error)
            }
            completion(IndicatorStoreResult.success(result: indicators))
        }
    }
    
}
