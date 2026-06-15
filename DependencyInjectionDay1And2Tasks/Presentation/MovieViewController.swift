//
//  ViewController.swift
//  DependencyInjectionDay1And2Tasks
//
//  Created by Mina_Wagdy on 14/06/2026.
//

import UIKit

class MovieViewController: UIViewController {

    private let viewModel: MovieViewModel

    init(viewModel: MovieViewModel) {
        self.viewModel = viewModel

        super.init(nibName: "MovieViewController", bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError(
            "init(coder:) has not been implemented. Use init(viewModel:)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.onMoviesUpdated = { [weak self] in
            print("Movies loaded: \(self?.viewModel.movies.count ?? 0)")
        }

        viewModel.loadMovies()
    }
}
