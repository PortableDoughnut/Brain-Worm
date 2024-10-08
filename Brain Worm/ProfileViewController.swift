//
//  ProfileViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/4/24.
//

import UIKit

class ProfileViewController: UIViewController {
	@IBOutlet weak var profilePictureImage: ProfilePicture!
	@IBOutlet weak var timestampLabel: UILabel!
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var postLabel: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var bioLabel: UILabel!
	@IBOutlet weak var postContentLabel: UILabel!

	enum Alignment {
		case left
		case center
	}
	
	
	
	func styalizeText() {
		let setFont: TypographyController = .init()
		
		setFont.makeStyle(label: bioLabel, alignment: .center, lineHeight: 1.3, letterSpacing: 0.8)
		setFont.makeStyle(label: nameLabel, alignment: .center, lineHeight: 1.1, letterSpacing: -1.2)
		setFont.setPostStyle(label: postLabel)
		setFont.setTimestampStyle(label: timestampLabel)
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

		styalizeText()
		profilePictureImage.layer.borderColor = #colorLiteral(red: 0.4309999943, green: 0.8199999928, blue: 0.9879999757, alpha: 1)
		profilePictureImage.layer.borderWidth = 8.12
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
