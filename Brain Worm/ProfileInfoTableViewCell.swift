//
//  ProfileInfoTableViewCell.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 11/4/24.
//

import UIKit

class ProfileInfoTableViewCell: UITableViewCell {
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var usernameLabel: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
	func update(user: User) {
		nameLabel.text = user.name
		usernameLabel.text = user.username
	}
}
