//
//  ProfilePictureTabBar.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 11/5/24.
//

import UIKit
import Foundation

extension UITabBarItem {
	
}

class ProfilePictureTabBar: UITabBarItem {
	override init() {
		super.init()
		
		self.title = "Profile"
		self.image = currentUser.profilePicture
		self.selectedImage = currentUser.profilePicture
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
//		fatalError("init(coder:) has not been implemented")
	}
}
