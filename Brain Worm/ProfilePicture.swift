//
//  ProfilePicture.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/3/24.
//

import UIKit

@IBDesignable class ProfilePicture: UIImageView {
	override func layoutSubviews() {
			super.layoutSubviews()
			if (frame.width != frame.height) {
				NSLog("Ended up with a non-square frame -- so it may not be a circle");
			}
			layer.cornerRadius = frame.width / 2
			layer.masksToBounds = true
		}
}
