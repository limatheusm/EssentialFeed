//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 5/21/23.
//

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
}
