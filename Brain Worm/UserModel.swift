//
//  UserModel.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 11/4/24.
//

import Foundation
import UIKit

struct User {
	var name: String
	var username: String
	var profilePicture: UIImage
	var profileBackground: UIImage
	var bio: String
	
	init(
		name: String,
		username: String,
		profilePicture: UIImage,
		profileBackground: UIImage,
		bio: String = ""
	) {
		self.name = name
		self.username = username
		self.profilePicture = profilePicture
		self.profileBackground = profileBackground
		self.bio = bio
	}
	
	init(
		name: String,
		username: String,
		profilePicture: String,
		profileBackground: String,
		bio: String = ""
	) {
		self.name = name
		self.username = "@\(username)"
		self.profilePicture = UIImage(named: profilePicture) ?? UIImage(named: "Default pfp")!
		self.profileBackground = UIImage(named: profileBackground) ?? UIImage()
		self.bio = bio
	}
	init(
		name: String,
		username: String,
		profilePicture: UIImage,
		profileBackground: String,
		bio: String = ""
	) {
		self.name = name
		self.username = "@\(username)"
		self.profilePicture = profilePicture
		self.profileBackground = UIImage(named: profileBackground) ?? UIImage()
		self.bio = bio
	}
	
	init(
		name: String,
		username: String,
		profilePicture: String,
		profileBackground: UIImage,
		bio: String = ""
	) {
		self.name = name
		self.username = "@\(username)"
		self.profilePicture = UIImage(named: profilePicture) ?? UIImage(named: "Default pfp")!
		self.profileBackground = profileBackground
		self.bio = bio
	}
}

extension User: Equatable {
	static func == (lhs: User, rhs: User) -> Bool {
		lhs.username == rhs.username
	}
}

extension User: Comparable {
	static func < (lhs: User, rhs: User) -> Bool {
		lhs.username < rhs.username
	}
}

var users: [String : User] = [
	"Astarion" : User(
		name: "Astarion",
		username: "SuckerForYou",
		profilePicture: #imageLiteral(resourceName: "Astarion.png"),
		profileBackground: #imageLiteral(resourceName: "Castle.jpg"),
		bio: "✨ Exquisite vampire spawn | Master of charm and daggers | 200 years of fine dining 🩸 | Lover of moonlit nights & mortal delights | Fleeing the shadows to taste freedom 🖤"
	),
	"Shadowheart" : User(
		name: "Shadowheart",
		username: "Shart",
		profilePicture: #imageLiteral(resourceName: "Shadowheart.jpg"),
		profileBackground: #imageLiteral(resourceName: "StarMap.jpg"),
		bio: "🌙 Devoted to the dark goddess | Stealer of secrets and hearts alike | Healing hands, hidden motives | Walking the line between light and shadow 🖤"
	),
	"Gwen" : User(
		name: "Gwen",
		username: "PortableDoughnut",
		profilePicture: #imageLiteral(resourceName: "GwenProfile.png"),
		profileBackground: #imageLiteral(resourceName: "George_Hitchcock_Flower_Girl_in_Holland.jpg"),
		bio: "🌌 Tech tinkerer on Arch Linux | Swift coder with a love for Digimon | Low-key obsessed with style, customization & creative chaos | Bob Ross devotee, TTRPG strategist, and occasional troublemaker 💻🎨"),
	"Karlach" : User(
		name: "Karlach",
		username: "HellfireHeart",
		profilePicture: #imageLiteral(resourceName: "Karlach.jpg"),
		profileBackground: #imageLiteral(resourceName: "Nature.jpg"),
		bio: "🔥 Infernal warrior with a heart ablaze | Fist of fury, heart of gold | Battling devils and inner demons | On a mission to break free and find peace 🖤")
]

let currentUser: User = users["Gwen"]!
