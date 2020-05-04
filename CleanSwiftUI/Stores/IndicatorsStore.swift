//
//  IndicatorsStore.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import Foundation

//MARK: - Store Definition

protocol IndicatorsStoreProtocol {
    
    // MARK: - Fetch Indicators
    func fetchIndicators(completion: @escaping IndicatorStoreCompletionHandler)
    
}

// MARK: - Completion Definition
typealias IndicatorStoreCompletionHandler = (IndicatorStoreResult<Indicators>) -> Void

// MARK: - Indicator Store Result

enum IndicatorStoreResult<T> {
    case success(result: T)
    case failure(error: Error)
}
