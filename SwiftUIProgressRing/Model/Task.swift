//
//  Task.swift
//  SwiftUIProgressRing
//
//  Created by Marble Interactive SL on 15/2/23.
//

import Foundation

struct Task: Identifiable, Equatable {
    var id = UUID()
    var name: String = ""
    var progress: Double = 0.0 {
        didSet {
            progress = min(progress, 1.0)
        }
    }
    
    init(name: String, progress: Double = 0.0) {
        self.name = name
        self.progress = progress
    }
}

