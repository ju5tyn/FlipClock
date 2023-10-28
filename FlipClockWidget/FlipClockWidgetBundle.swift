//
//  FlipClockWidgetBundle.swift
//  FlipClockWidget
//
//  Created by Justyn Henman on 28/10/2023.
//

import WidgetKit
import SwiftUI

@main
struct FlipClockWidgetBundle: WidgetBundle {
    var body: some Widget {
        HoursWidget()
        MinutesWidget()
    }
}
