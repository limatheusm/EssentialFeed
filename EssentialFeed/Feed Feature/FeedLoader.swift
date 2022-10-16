//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 10/6/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedItem], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
