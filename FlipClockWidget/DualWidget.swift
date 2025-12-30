//
//  DualWidget.swift
//  FlipClock
//
//  Created by Justyn Henman on 28/10/2023.
//

import WidgetKit
import SwiftUI

struct DualEntryView: View {
    @Environment(\.widgetRenderingMode) var renderingMode

    var entry: Provider.Entry

    var body: some View {
        HStack{
            ClockElement(number: String(format: "%02d", Calendar.current.component(.hour, from: entry.date)), isTinted: (renderingMode == .accented || renderingMode == .vibrant))
                .padding(.leading)
            ClockElement(number: String(format: "%02d", Calendar.current.component(.minute, from: entry.date)), isTinted: (renderingMode == .accented || renderingMode == .vibrant))
                .padding(.trailing)
        }
    }
}

struct DualWidget: Widget {
    let kind: String = "DualWidget"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            DualEntryView(entry: entry)
                .containerBackground(.black, for: .widget)
        }.supportedFamilies([.systemMedium])
    }
}

#Preview(as: .systemMedium) {
    DualWidget()
} timeline: {
    SimpleEntry(date: .now)
}
