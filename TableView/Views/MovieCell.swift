//
//  MovieCell.swift
//  TableView
//
//  Created by 김시종 on 3/21/24.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var movieNameLable: UILabel!
    @IBOutlet weak var descriptionLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
