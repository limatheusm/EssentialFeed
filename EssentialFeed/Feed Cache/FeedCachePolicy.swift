//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 11/15/22.
//

import Foundation

internal final class FeedCachePolicy {
    private init() {}

    private static let calendar = Calendar(identifier: .gregorian)

    // `let` will keep the value in memory at all times, but we only need it for short operations.
    // In such cases, a computed `var` may be a better choice.
    private static var maxCacheAgeInDays: Int {
        return 7
    }

    static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCacheAgeInDays, to: timestamp) else {
            return false
        }

        return date < maxCacheAge
    }
}
