//
//  MovieEntryView.swift
//  MovieExtension
//
//  Created by Ankit on 30/04/24.
//

import WidgetKit
import SwiftUI

struct MovieEntryView : View {
    var entry: MovieProvider.Entry

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(entry.name)
                .font(.system(size: 10))
                .fontWeight(.light)
            Text(entry.date, style: .time)
                .font(.system(size: 10))
                .fontWeight(.light)
        }
         
    }
}
