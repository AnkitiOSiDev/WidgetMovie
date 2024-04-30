//
//  MovieDataModel.swift
//  MovieExtension
//
//  Created by Ankit on 30/04/24.
//

import WidgetKit

let dummyMovieData = MovieEntry(name: "UPCOMING MOVIES", date: Date())

struct MovieModel {
    let name: String
}

struct MovieEntry: TimelineEntry {
    let name: String
    let date: Date
}
