//
//  IndicatorsView.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import SwiftUI

struct IndicatorsView: View {
    
    @ObservedObject var appState: AppState
    var interactor: IndicatorInteractor
    
    var body: some View {
        VStack {
            Text(appState.indicators.dollar?.nombre ?? "").font(.title)
            Text("\(appState.indicators.dollar?.valor ?? 0.0)").font(.headline)
        }.onAppear(perform: {
            self.interactor.loadIndicators()
        })
    }
}

struct IndicatorsView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorsView(appState: Self.state, interactor: IndicatorInteractor(appState: Self.state))
    }
    static let state = AppState()
}
