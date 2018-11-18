//
//  TutorListCell.swift
//  pick-up-tutoring
//
//  Created by Andy on 11/15/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import UIKit

class TutorListCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var course: UILabel!
    @IBOutlet weak var avail: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var major: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
