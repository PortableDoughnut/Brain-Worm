//
//  Post.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/3/24.
//

import UIKit

@IBDesignable class Post: UIStackView {
	override func layoutSubviews() {
			super.layoutSubviews()
			if (frame.width != frame.height) {
				NSLog("Ended up with a non-square frame -- so it may not be a circle");
			}
			layer.cornerRadius = 22
			layer.masksToBounds = true
			layer.borderColor = #colorLiteral(red: 0.4309999943, green: 0.8199999928, blue: 0.9879999757, alpha: 1)
			layer.borderWidth = 0.4
//			layer.shadowRadius = 0.75
//			layer.shadowOpacity = 0.75
		}
}
