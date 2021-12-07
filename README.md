# SearchContainerExample

Small example for [this](https://developer.apple.com/forums/thread/696151) question on Apple developers forum.

This code demonstrates broken UITextField on tvOS 14 and 15.

In this example, RootViewController may present InputViewController or UISearchContainerViewController. When InputViewController is presented from RootViewController a text field works great. But when InputViewController is presented from SearchResultsViewController wrapped in UISearchController and UISearchContainerViewController the text field doesn' react on taps.
