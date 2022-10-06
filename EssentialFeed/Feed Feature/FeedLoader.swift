//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 10/6/22.
//

import Foundation

typealias LoadFeedResult = Result<[FeedItem], Error>

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
