//
//  PostTableViewCell.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 11/4/24.
//

import UIKit

class PostTableViewCell: UITableViewCell {
	@IBOutlet weak var timestampLabel: UILabel!
	@IBOutlet weak var postLabel: UILabel!
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var profilePictureImage: ProfilePicture!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
	func update(_ post: Post) {
		let dateFormatter = DateFormatter()
		dateFormatter.dateStyle = .medium
		dateFormatter.timeStyle = .short
		dateFormatter.timeZone = .current
		dateFormatter.locale = .current
		
		
		profilePictureImage.image = post.profilePicture
		nameLabel.text = post.name
		usernameLabel.text = post.username
		timestampLabel.text = dateFormatter.string(from: post.createdAt)
		postLabel.text = post.content
		
		let setFont: TypographyController = .init()
		
		setFont.setHeaderTextStyle(label: nameLabel)
		setFont.setHeaderTextStyle(label: usernameLabel)
		setFont.setPostStyle(label: postLabel)
		setFont.setTimestampStyle(label: timestampLabel)
	}
}
