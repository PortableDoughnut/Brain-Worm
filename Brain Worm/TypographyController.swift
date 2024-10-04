//
//  TypographyController.swift
//  Brain Worm
//
//  Created by Gwen Thelin on 10/4/24.
//

import Foundation
import UIKit

enum Alignment {
	case left
	case center
}

class TypographyController {
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
}
