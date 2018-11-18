//
//  TutorListCellTableViewCell.swift
//  pick-up-tutoring
//
//  Created by Andy on 11/15/18.
//  Copyright © 2018 Lily Bhattacharjee. All rights reserved.
//

import UIKit

class TuteeListCellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userCourse: UILabel!
    @IBOutlet weak var userTopic: UILabel!
    @IBOutlet weak var userAvail: UILabel!
    @IBOutlet weak var userLocation: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
