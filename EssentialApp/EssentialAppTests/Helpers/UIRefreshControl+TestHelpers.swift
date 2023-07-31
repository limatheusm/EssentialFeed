//
//  UIRefreshControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Matheus Lima on 7/30/23.
//

import UIKit

extension UIRefreshControl {
	func simulatePullToRefresh() {
		simulate(event: .valueChanged)
	}
}
