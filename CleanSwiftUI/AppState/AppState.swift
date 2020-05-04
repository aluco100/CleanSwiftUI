//
//  AppState.swift
//  CleanSwiftUI
//
//  Created by Alfredo Luco on 03-05-20.
//  Copyright © 2020 Alfredo Luco. All rights reserved.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    @Published var indicators: Indicators = Indicators()
}
