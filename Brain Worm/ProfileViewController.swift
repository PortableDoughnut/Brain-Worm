//
//  ProfileViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/4/24.
//

import UIKit

class ProfileViewController: UIViewController {
	@IBOutlet weak var bioLabel: UILabel!
	@IBOutlet weak var postContentLabel: UILabel!
	
	func setLineHeight( style: NSMutableParagraphStyle, label: UILabel, constant: Double) {
		style.lineSpacing = label.font.xHeight * constant
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

        let bioTextStyle = NSMutableParagraphStyle()
		setLineHeight(style: bioTextStyle, label: bioLabel, constant: 1.3)
		bioTextStyle.alignment = .center
		
		let bioTextString = NSAttributedString(
			string: bioLabel.text ?? "",
			attributes: [NSAttributedString.Key.paragraphStyle: bioTextStyle]
			)
		
		bioLabel.attributedText = bioTextString
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
