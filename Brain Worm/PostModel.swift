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

extension Post: Equatable {
	static func == (lhs: Post, rhs: Post) -> Bool {
			return lhs.createdAt == rhs.createdAt && lhs.user == rhs.user && lhs.content == rhs.content
		}
}

extension Post: Comparable {
	static func < (lhs: Post, rhs: Post) -> Bool {
		if lhs.createdAt == rhs.createdAt {
			return lhs.username < rhs.username
		} else {
			return lhs.createdAt < rhs.createdAt
		}
		}
}

let posts: [Post] = [
	Post(user: users["Astarion"]!, content: "I wish I would look in the mirror and admire my own beauty"),
	Post(user: users["Shadowheart"]!, content: "Maybe I should cut my bangs..."),
	Post(user: users["Gwen"]!, content: "I am the gayest woman alive!"),
	Post(user: users["Astarion"]!, content: "I wish I could fly..."),
	Post(user: users["Karlach"]!, content: "I wish I could be a superhero..."),
	Post(user: users["Karlach"]!, content: "I want to give everybody a hug soooo bad")
]
