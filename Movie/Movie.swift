//
//  Movie.swift
//  Movie
//
//  Created by Ankit on 30/04/24.
//

import WidgetKit
import SwiftUI

@main
struct Movie: Widget {
    let kind: String = "Movie"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: MovieProvider()) { entry in
            MovieEntryView(entry: entry)
        }
        .configurationDisplayName("Movie")
        .description("This will show name of movie playing live")
    }
}
