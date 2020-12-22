//
//  FirstTableViewCell.swift
//  TableView Multiple Cells
//
//  Created by Giorgi Gogichaishvili on 10/18/20.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
static let identifier = "FirstTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "FirstTableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
