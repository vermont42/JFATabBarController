JFATabBarController
===================

`UITabBarController` is a handy control for building user interfaces, but it has an annoying limitation: if there are more than five tabs, a "More" button replaces the fifth tab. The user might not understand what "More" means or the fact that it hides additional controllers. `JFATabBarController` is a pluggable replacement for `UITabBarController` that eliminates this limitation. The user of this control can access an arbitrary number of controllers simply by swiping left on the tab bar. By default, `JFATabBarController` displays an exciting animation when changing tabs.

For a video of `JFATabBarController` in action, see [here](https://vimeo.com/102583744) or [here](https://vimeo.com/111125796) (includes [music](https://incompetech.com)).

## Installation and Use
To demo `JFATabBarController`, just clone the repository, double-click `JFATabBarController.xcodeproj`, and run on an iPhone or iPad simulator or device.

Here are the steps to use `JFATabBarController` in your app. These instructions assume familiarity with use of `UITabBarController`.

1. Add `JFATabBarController.h`, `JFATabBarController.m`, `JFAArrowView.m`, and `JFAArrowView.h` to your project. Alternatively, add `pod 'JFATabBarController'` to your `Podfile` and do a `pod install`.
2. If you do not already have a `UITabBarController` in your storyboard, add one.
3. Change the class of this `UITabBarController` to `JFATabBarController` by selecting it, opening the Utilities pane, showing the Identity inspector, and changing the class to `JFATabBarController`.
4. If you have not done so already, create a "relationship segue - view controller" from the `JFATabBarController` to each view controller you want accessible from the tab bar.
5. For each view controller accessible from the tab bar, either set the name and image of the tab-bar item or change the identifier to a system item like "Favorites" or "Bookmarks".

## Constants
There are two constants of interest in `JFATabBarController.m`.

`MAX_TAB_COUNT` is the maximum number of tab-bar items to show at once. You are not limited to `UITabBarController`’s five.

`TAB_ANIMATION_DURATION` is the duration of the tab-changing animation. The larger the number, the longer the duration. Set this to 0.0 to prevent animation.

## Notes
`JFATabBarController` has been tested extensively on iPhone 4, iPhone 4S, iPhone 5S, iPhone 6, iPad 2, iPad Mini, and iPad Air.

Because the app for which `JFATabBarController` was created, [Immigration](https://itunes.apple.com/us/app/immigration/id777319358), has no need for `UITabBarController`’s localization, badge, or accessibility features, `JFATabBarController` does not currently support them. The app may require these features at some point, and `JFATabBarController` will support them then. Pull requests are welcome.

## Creator

**Josh Adams**
* [http://www.immigrationapp.biz](http://www.immigrationapp.biz)
* [@vermont42](https://twitter.com/vermont42)

## License
```
The MIT License (MIT)

Copyright (c) 2014 Josh Adams

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
