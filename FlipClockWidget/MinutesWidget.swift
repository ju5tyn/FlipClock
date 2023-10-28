//
//  MinutesWidget.swift
//  FlipClock
//
//  Created by Justyn Henman on 28/10/2023.
//

import WidgetKit
import SwiftUI

struct MinutesEntryView: View {
    var entry: Provider.Entry

    var body: some View {
        ClockElement(number: Calendar.current.component(.minute, from: entry.date))
    }
}

struct MinutesWidget: Widget {
    let kind: String = "MinutesWidget"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            MinutesEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }.supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    MinutesWidget()
} timeline: {
    SimpleEntry(date: .now)
}
