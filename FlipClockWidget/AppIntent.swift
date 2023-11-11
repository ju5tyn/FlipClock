//
//  AppIntent.swift
//  FlipClockWidget
//
//  Created by Justyn Henman on 28/10/2023.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource = "Configuration"
    static var description = IntentDescription("FlipClock Widget.")
}
