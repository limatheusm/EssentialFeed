//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 7/30/23.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
