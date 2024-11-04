//
//  ProfileViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/4/24.
//

import UIKit

class ProfileViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var profilePictureImage: ProfilePicture!
	@IBOutlet weak var profileBackgroundImage: UIImageView!
	
	let currentUser: User = users[2]

	enum Alignment {
		case left
		case center
	}
	
	
//	func styalizeText() {
////		let setFont: TypographyController = .init()
//		
////		setFont.makeStyle(label: bioLabel, alignment: .center, lineHeight: 1.3, letterSpacing: 0.8)
////		setFont.makeStyle(label: nameLabel, alignment: .center, lineHeight: 1.1, letterSpacing: -1.2)
////		setFont.setPostStyle(label: postLabel)
////		setFont.setTimestampStyle(label: timestampLabel)
//	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

//		styalizeText()
		profilePictureImage.layer.borderColor = #colorLiteral(red: 0.4309999943, green: 0.8199999928, blue: 0.9879999757, alpha: 1)
		profilePictureImage.layer.borderWidth = 4.06
		
		NotificationCenter.default.addObserver(self, selector: #selector(updateDarkMode),
											   name: Notification.Name("darkModeChanged"),
											   object: nil)
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.register(UINib(nibName: "ProfileInfoTableViewCell", bundle: nil),
						   forCellReuseIdentifier: "InfoCell")
		tableView.rowHeight = UITableView.automaticDimension
		tableView.estimatedRowHeight = 100
		
		profilePictureImage.image = currentUser.profilePicture
		profileBackgroundImage.image = currentUser.profileBackground
		

    }
	
	@objc func updateDarkMode() {
		let isDarkMode = UserDefaults.standard.bool(forKey: "isDarkMode")
		overrideUserInterfaceStyle = isDarkMode ? .dark : .light
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)

		let isDarkMode = UserDefaults.standard.bool(forKey: "isDarkMode")
		overrideUserInterfaceStyle = isDarkMode ? .dark : .light
	}
	
	deinit {
		NotificationCenter.default.removeObserver(self, name: Notification.Name("darkModeChanged"), object: nil)
	}
	
	
    

	@IBAction func onSettingsButtonPressed() {
		performSegue(withIdentifier: "settingsSegue", sender: nil)
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 4
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		switch section {
		case 0: return 1
		case 1: return 1
		case 2: return 1
		case 3: return 1
		default: return 0
		}
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		switch indexPath.section {
		case 0:
			guard let cell = tableView.dequeueReusableCell(
				withIdentifier: "InfoCell", for: indexPath) as? ProfileInfoTableViewCell else {
				return UITableViewCell()
			}
			cell
				.update(
					user: User(
						name: "Gwen",
						username: "PortableDoughnut",
						profilePicture: "Gwen Coffee",
						profileBackground: "Chicago Skyline",
						bio: "I'm Gwen and I love coffee."
					)
				)
			
			return cell
		case 1:
			let cell = tableView.dequeueReusableCell(withIdentifier: "BioCell", for: indexPath)
			cell.textLabel?.text = currentUser.bio
			return cell
		case 2: return UITableViewCell()
		case 3:
			let cell = tableView.dequeueReusableCell(
				withIdentifier: "SettingsCell",
				for: indexPath
			)
			return cell
		default: return UITableViewCell()
		}
		
	}
}
