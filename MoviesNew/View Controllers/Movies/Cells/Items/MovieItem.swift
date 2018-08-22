//
//  MovieItem.swift
//  MoviesNew
//
//  Created by Olga Saliy on 8/22/18.
//  Copyright © 2018 Olha Salii. All rights reserved.
//

import Foundation
import UIKit

class MovieItem: TableViewCellItem {
    
    let title: String
    let imageURL: String?
    
    init(_ movie: Movie) {
        self.title = movie.title ?? "Unknown"
        self.imageURL = movie.posterPath
    }
    
    var cellIdentifier: String {
        return "movieCell"
    }
    
    func configure(cell: UITableViewCell) {
        (cell as! MovieCell).configure(with: self)
    }
    
}
