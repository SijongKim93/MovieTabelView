//
//  ViewController.swift
//  TableView
//
//  Created by 김시종 on 3/21/24.
//

import UIKit

class ViewController: UIViewController {
    
    var movieArray: [Movie] = []
    
    var movieDataManager = DataManager()

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 120
        
        movieDataManager.makeMovieData()
        movieArray = movieDataManager.getMovieData()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(#function)
        return movieArray.count
    } // 표시할 셀 갯수
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let array = movieDataManager.getMovieData()
        
        let movie = array[indexPath.row]
        
        cell.mainImageView.image = movie.movieImage
        cell.movieNameLable.text = movie.movieName
        cell.descriptionLable.text = movie.movieDescription
        cell.selectionStyle = .none

        return cell
    }
}
