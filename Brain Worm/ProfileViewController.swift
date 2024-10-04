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
	
	func setStyle(style: NSMutableParagraphStyle, label: UILabel, letterSpacing: Double) {
		let textString = NSAttributedString(
			string: label.text ?? "",
			attributes: [NSAttributedString.Key.paragraphStyle: style, .kern: letterSpacing]
			)
		
		
		label.attributedText = textString
	}
	
	func makeStyle(label: UILabel, alignment: Alignment, lineHeight: Double, letterSpacing: Double) {
		let textStyle = NSMutableParagraphStyle()
		setLineHeight(style: textStyle, label: label, constant: lineHeight)
		
		switch alignment {
			case .center:
				textStyle.alignment = .center
			case .left:
				textStyle.alignment = .left
		}
		
		setStyle(style: textStyle, label: label, letterSpacing: letterSpacing)
		setStyle(style: textStyle, label: label, letterSpacing: letterSpacing)
	}
	
	func styalizeText() {
		makeStyle(label: bioLabel, alignment: .center, lineHeight: 1.3, letterSpacing: 0.8)
		makeStyle(label: nameLabel, alignment: .center, lineHeight: 1.1, letterSpacing: -1.2)
		makeStyle(label: usernameLabel, alignment: .center, lineHeight: 1.2, letterSpacing: -0.45)
		makeStyle(label: postLabel, alignment: .left, lineHeight: 1.5, letterSpacing: 0.8)
		makeStyle(label: timestampLabel, alignment: .left, lineHeight: 1.1, letterSpacing: 1)
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

		styalizeText()
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
