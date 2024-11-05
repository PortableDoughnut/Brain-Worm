//
//  ViewController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/3/24.
//

import UIKit

class HomeViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		NotificationCenter.default.addObserver(self, selector: #selector(updateDarkMode), name: Notification.Name("darkModeChanged"), object: nil)
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.register(UINib(nibName: "PostTableViewCell", bundle: nil),
						   forCellReuseIdentifier: "PostCell")
		tableView.register(UINib(nibName: "EngagementTableViewCell", bundle: nil),
						   forCellReuseIdentifier: "EngagementCell")
		tableView.rowHeight = UITableView.automaticDimension
		tableView.estimatedRowHeight = 100
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

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
	func numberOfSections(in tableView: UITableView) -> Int {
		posts.count
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		///TODO: Replace with `replies.count + 2`
		2
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if indexPath.row == 0 {
			guard let cell = tableView.dequeueReusableCell(
				withIdentifier: "PostCell",
				for: indexPath
			) as? PostTableViewCell else {	return UITableViewCell()	}
			cell.update(posts[indexPath.section])
			return cell
		}	else if indexPath.row == 1 {
			guard let cell = tableView.dequeueReusableCell(
				withIdentifier: "EngagementCell",
				for: indexPath) as? EngagementTableViewCell else {
				return UITableViewCell()
			}
			cell.update(posts[indexPath.section])
			return cell
		}	else {
			return UITableViewCell()
		}
	}
	
}

