//
//  ViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/3/24.
//

import UIKit

class HomeViewController: UIViewController {
	@IBOutlet weak var karlachTimestampLabel: UILabel!
	@IBOutlet weak var karlachPostLabel: UILabel!
	@IBOutlet weak var karlachUsernameLabel: UILabel!
	@IBOutlet weak var karlachNameLabel: UILabel!
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
	
	
	
	func setTextStyle() {
		setFont.setHeaderTextStyle(label: astarionNameLabel)
		setFont.setHeaderTextStyle(label: astarionUsernameLabel)
		setFont.setPostStyle(label: astarionPostLabel)
		setFont.setTimestampStyle(label: astarionTimestampLabel)
		setFont.setHeaderTextStyle(label: shadowheartNameLabel)
		setFont.setHeaderTextStyle(label: shadowheartUsernameLabel)
		setFont.setPostStyle(label: shadowheartPostLabel)
		setFont.setTimestampStyle(label: shadowheartTimestampLabel)
		setFont.setHeaderTextStyle(label: gwenNameLabel)
		setFont.setHeaderTextStyle(label: gwenUsernameLabel)
		setFont.setPostStyle(label: gwenPostLabel)
		setFont.setTimestampStyle(label: gwenTimestampLabel)
		setFont.setHeaderTextStyle(label: karlachNameLabel)
		setFont.setHeaderTextStyle(label: karlachUsernameLabel)
		setFont.setPostStyle(label: karlachPostLabel)
		setFont.setTimestampStyle(label: karlachTimestampLabel)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setTextStyle()
		
		NotificationCenter.default.addObserver(self, selector: #selector(updateDarkMode), name: Notification.Name("darkModeChanged"), object: nil)
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


}

