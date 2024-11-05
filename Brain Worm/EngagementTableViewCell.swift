//
//  EngagementTableViewCell.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 11/5/24.
//

import UIKit

class EngagementTableViewCell: UITableViewCell {
	@IBOutlet weak var shareButton: UIButton!
	@IBOutlet weak var replyButton: UIButton!
	@IBOutlet weak var likesLabel: UILabel!
	@IBOutlet weak var heartButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
	func update(_ post: Post) {
		likesLabel.text = "\(post.likes)"
	}
}
