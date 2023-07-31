//
//  UITableViewCell+dequeue.swift
//  EssentialFeediOS
//
//  Created by Matheus Lima on 7/30/23.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
