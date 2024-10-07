//
//  ViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/3/24.
//

import UIKit

class HomeViewController: UIViewController {
	@IBOutlet weak var gwenTimestampLabel: UILabel!
	@IBOutlet weak var gwenPostLabel: UILabel!
	@IBOutlet weak var gwenUsernameLabel: UILabel!
	@IBOutlet weak var gwenNameLabel: UILabel!
	@IBOutlet weak var shadowheartTimestampLabel: UILabel!
	@IBOutlet weak var shadowheartPostLabel: UILabel!
	@IBOutlet weak var shadowheartUsernameLabel: UILabel!
	@IBOutlet weak var shadowheartNameLabel: UILabel!
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
		setFont.makeStyle(label: label, alignment: .left, lineHeight: 0.84, letterSpacing: 0.012)
	}
	
	func setTextStyle() {
		setHeaderTextStyle(label: astarionNameLabel)
		setHeaderTextStyle(label: astarionUsernameLabel)
		setPostStyle(label: astarionPostLabel)
		setTimestampStyle(label: astarionTimestampLabel)
		setHeaderTextStyle(label: shadowheartNameLabel)
		setHeaderTextStyle(label: shadowheartUsernameLabel)
		setPostStyle(label: shadowheartPostLabel)
		setTimestampStyle(label: shadowheartTimestampLabel)
		setHeaderTextStyle(label: gwenNameLabel)
		setHeaderTextStyle(label: gwenUsernameLabel)
		setPostStyle(label: gwenPostLabel)
		setTimestampStyle(label: gwenTimestampLabel)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setTextStyle()
	}


}

