//
//  IndicatorsInteractor.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import Foundation
import SwiftUI

protocol IndicatorsInteractor {
    var appState: AppState{get set}
    var repository: IndicatorsStoreProtocol {get set}
    func loadIndicators()
}

struct IndicatorInteractor: IndicatorsInteractor {
    
    var appState: AppState
    
    // Inicialmente sera por la api pero puede ser por realm
    var repository: IndicatorsStoreProtocol = IndicatorAPIRepository()
    
    func loadIndicators() {
        repository.fetchIndicators(completion: { (result) in
            switch result{
            case .success(let result):
                self.appState.indicators = result
                break
            case .failure(let error):
                //TODO: Puede ser un error generico o algo
                break
            }
        })
    }
    
}
