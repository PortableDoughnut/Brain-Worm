//
//  ProfileViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/4/24.
//

import UIKit

class ProfileViewController: UIViewController {
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var bioLabel: UILabel!
	@IBOutlet weak var postContentLabel: UILabel!
	
	func setLineHeight( style: NSMutableParagraphStyle, label: UILabel, constant: Double) {
		style.lineSpacing = label.font.xHeight * constant
	}
	
	func setStyle(style: NSMutableParagraphStyle, label: UILabel) {
		let textString = NSAttributedString(
			string: label.text ?? "",
			attributes: [NSAttributedString.Key.paragraphStyle: style]
			)
		
		label.attributedText = textString
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

        let bioTextStyle = NSMutableParagraphStyle()
		setLineHeight(style: bioTextStyle, label: bioLabel, constant: 1.3)
		bioTextStyle.alignment = .center
		setStyle(style: bioTextStyle, label: bioLabel)
		
		let nameTextStyle = NSMutableParagraphStyle()
		setLineHeight(style: nameTextStyle, label: nameLabel, constant: 1.1)
		nameTextStyle.alignment = .center
		setStyle(style: nameTextStyle, label: nameLabel)
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
