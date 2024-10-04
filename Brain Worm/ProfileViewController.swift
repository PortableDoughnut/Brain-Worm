//
//  ProfileViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/4/24.
//

import UIKit

class ProfileViewController: UIViewController {
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
	
	func makeStyle(label: UILabel, alignment: Alignment, lineHeight: Double) {
		let textStyle = NSMutableParagraphStyle()
		setLineHeight(style: textStyle, label: label, constant: lineHeight)
		
		switch alignment {
			case .center:
				textStyle.alignment = .center
			case .left:
				textStyle.alignment = .left
		}
		
		setStyle(style: textStyle, label: label)
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

		makeStyle(label: bioLabel, alignment: .center, lineHeight: 1.3)
		makeStyle(label: nameLabel, alignment: .center, lineHeight: 1.1)
		makeStyle(label: usernameLabel, alignment: .center, lineHeight: 1.2)
		makeStyle(label: postLabel, alignment: .left, lineHeight: 1.5)
		makeStyle(label: timestampLabel, alignment: .left, lineHeight: 1.1)
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
