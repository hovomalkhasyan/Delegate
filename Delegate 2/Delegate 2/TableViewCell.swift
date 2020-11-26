//
//  TableViewCell.swift
//  Delegate 2
//
//  Created by Hovo on 6/8/20.
//  Copyright © 2020 Hovo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    weak var delegate: DidSelectButtonDelegate?
    @IBOutlet weak var btn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnAction(_ sender: UIButton) {
        delegate?.didSelectButtons!(with: sender.tag)
    }
}
