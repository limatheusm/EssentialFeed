//
//  UIControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Matheus Lima on 7/30/23.
//

import UIKit

extension UIControl {
	func simulate(event: UIControl.Event) {
		allTargets.forEach { target in
			actions(forTarget: target, forControlEvent: event)?.forEach {
				(target as NSObject).perform(Selector($0))
			}
		}
	}
}
