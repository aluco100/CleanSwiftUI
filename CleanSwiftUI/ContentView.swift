//
//  ContentView.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var appState = AppState()
    var body: some View {
        IndicatorsView(appState: appState, interactor: IndicatorInteractor(appState: appState))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
