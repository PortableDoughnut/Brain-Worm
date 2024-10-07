//
//  ViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/3/24.
//

import UIKit

class HomeViewController: UIViewController {
	@IBOutlet weak var astarionTimestampLabel: UILabel!
	@IBOutlet weak var astarionPostLabel: UILabel!
	@IBOutlet weak var astarionUsernameLabel: UILabel!
	@IBOutlet weak var astarionNameLabel: UILabel!
	
	let setFont: TypographyController = .init()
	
	func setHeaderTextStyle(label: UILabel) {
		setFont.makeStyle(label: label, alignment: .left, lineHeight: 1.3, letterSpacing: -0.28)
	}
	
	func setPostStyle(label: UILabel) {
		setFont.makeStyle(label: label, alignment: .left, lineHeight: 1.386, letterSpacing: 0.026)
	}
	
	func setTimestampStyle(label: UILabel) {
		
	}
	
	func setTextStyle() {
		setHeaderTextStyle(label: astarionNameLabel)
		setHeaderTextStyle(label: astarionUsernameLabel)
		setPostStyle(label: astarionPostLabel)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setTextStyle()
	}


}

