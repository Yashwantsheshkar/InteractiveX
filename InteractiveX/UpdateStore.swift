//
//  UpdateStore.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 30/06/24.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject{
    @Published var updates: [Update] = updateData
}
