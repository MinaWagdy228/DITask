//
//  MovieService.swift
//  DependencyInjectionDay1And2Tasks
//
//  Created by Mina_Wagdy on 14/06/2026.
//
import Foundation

protocol MovieServiceProtocol {
    func fetchMovies() -> [Movie]
}

class MovieService: MovieServiceProtocol {
    func fetchMovies() -> [Movie] {
        return [
            Movie(id: 1, title: "The Shawshank Redemption"),
            Movie(id: 2, title: "The Godfather"),
            Movie(id: 3, title: "The Dark Knight"),
        ]
    }
}
