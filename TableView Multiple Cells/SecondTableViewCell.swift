//
//  SecondTableViewCell.swift
//  TableView Multiple Cells
//
//  Created by Giorgi Gogichaishvili on 10/18/20.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    static let identifier = "SecondTableViewCell"
        static func nib() -> UINib {
            return UINib(nibName: "SecondTableViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .blue
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
