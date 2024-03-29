//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 11/12/22.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
