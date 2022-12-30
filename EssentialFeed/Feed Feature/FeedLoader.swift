//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 10/6/22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
