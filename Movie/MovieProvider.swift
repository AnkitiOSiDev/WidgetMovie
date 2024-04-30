//
//  MovieProvider.swift
//  WidgetMovie
//
//  Created by Ankit on 30/04/24.
//

import WidgetKit

struct MovieProvider: TimelineProvider {
    typealias Entry = MovieEntry
    let dispatchGroup = DispatchGroup()
    
    func placeholder(in context: Context) -> MovieEntry {
        dummyMovieData
    }

    func getSnapshot(in context: Context, completion: @escaping (MovieEntry) -> ()) {
        if context.isPreview {
            let entry = dummyMovieData
            completion(entry)
        }
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var movieData : MovieModel = MovieModel(name: "No upcoming movie")
        
        getMovies { movie in
            movieData = movie
        }
        
        dispatchGroup.notify(queue: DispatchQueue.main) {
            let nextUpdateDate = Calendar.current.date(byAdding: .minute,  value: 5, to: Date())!

            let timeline = Timeline(entries: [MovieEntry(name: movieData.name, date: Date())],
                                    policy: .after(nextUpdateDate))
            completion(timeline)
        }
        
    }
}


extension MovieProvider {
    func getMovies(completion: @escaping (MovieModel) -> Void) {
        let movieNames = ["A", "B", "C", "D"]
        dispatchGroup.enter()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(.init(name: movieNames.randomElement() ?? "No movie right now"))
            dispatchGroup.leave()
        }
    }
}
