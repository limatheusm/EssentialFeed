//
//  UIRefreshControls+Helpers.swift
//  EssentialFeediOS
//
//  Created by Matheus Lima on 7/30/23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
