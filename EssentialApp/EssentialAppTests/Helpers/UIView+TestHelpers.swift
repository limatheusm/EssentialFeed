//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Matheus Lima on 7/30/23.
//

import UIKit

extension UIView {
	func enforceLayoutCycle() {
		layoutIfNeeded()
		RunLoop.current.run(until: Date())
	}
}
