//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Matheus Lima on 3/30/23.
//

import EssentialFeed
import UIKit

public final class FeedUIComposer {
    private init() {}

    public static func feedComposedWith(
        feedLoader: FeedLoader,
        imageLoader: FeedImageDataLoader
    ) -> FeedViewController {
        let presentationAdapter = FeedLoaderPresentationAdapter(feedLoader: feedLoader)
        let refreshController = FeedRefreshViewController(delegate: presentationAdapter)
        let feedController = FeedViewController(refreshController: refreshController)
        let feedView = FeedViewAdapter(controller: feedController, imageLoader: imageLoader)
        let loadingView = WeakRefVirtualProxy(refreshController)
        let errorView = WeakRefVirtualProxy(feedController)
        let presenter = FeedPresenter(feedView: feedView, loadingView: loadingView, errorView: errorView)
        presentationAdapter.presenter = presenter
        return feedController
    }
}
