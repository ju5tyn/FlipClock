//
//  HoursWidget.swift
//  FlipClock
//
//  Created by Justyn Henman on 28/10/2023.
//

import WidgetKit
import SwiftUI



struct HoursEntryView: View {
    @Environment(\.widgetRenderingMode) var renderingMode
    var entry: Provider.Entry

    var body: some View {
        switch renderingMode{
            case .accented, .vibrant:
                ClockElement(number: String(format: "%02d", Calendar.current.component(.hour, from: entry.date)))
                    .luminanceToAlpha()
            case .fullColor:
                ClockElement(number: String(format: "%02d", Calendar.current.component(.hour, from: entry.date)))
            default:
                ClockElement(number: String(format: "%02d", Calendar.current.component(.hour, from: entry.date)))
        }
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
