//
//  PostModel.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 11/4/24.
//

import Foundation
import UIKit

struct Post {
	var user: User
	var content: String
	var createdAt: Date
	var name: String {
		user.name
	}
	var username: String {
		user.username
	}
	var profilePicture: UIImage {
		user.profilePicture
	}
	
	init(user: User, content: String) {
		self.user = user
		self.content = content
		createdAt = Date()
	}
}

