//
//  HoursWidget.swift
//  FlipClock
//
//  Created by Justyn Henman on 28/10/2023.
//

import WidgetKit
import SwiftUI

struct HoursEntryView: View {
    var entry: Provider.Entry

    var body: some View {
        ClockElement(number: String(format: "%02d", Calendar.current.component(.hour, from: entry.date)))
    }
}

struct HoursWidget: Widget {
    let kind: String = "HoursWidget"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            HoursEntryView(entry: entry)
                .containerBackground(.black, for: .widget)
        }.supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    HoursWidget()
} timeline: {
    SimpleEntry(date: .now)
}
