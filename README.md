JFATabBarController
===================

`UITabBarController` is a handy control for building user interfaces, but this control has an annoying limitation: if there are more than five tabs, a "More" button replaces the fifth tab. The user might not understand what "More" means or the fact that it hides additional controllers. `JFATabBarController` is a pluggable replacement for `UITabBarController` that eliminates this limitation. The user of this control can access an arbitrary number of controllers simply by swiping left on the tab bar. By default, JFATabBarController displays an exciting animation when changing tabs.

`UITabBarController` supports multitasking on late-model iPads running iOS 9.

## Installation and Use
To demo `JFATabBarController`, just clone the repository, double-click `JFATabBarController.xcodeproj`, and run on an iPhone or iPad simulator or device. 

Here are the steps to use `JFATabBarController` in your app. These instructions assume familiarity with use of `UITabBarController`. If you have not used `UITabBarController`, I recommend watching the Stanford iOS-development course on iTunes U.

1. Add `JFATabBarController.h`, `JFATabBarController.m`, `JFAArrowView.m`, and `JFAArrowView.h` to your project.
2. If you do not already have a `UITabBarController` in your storyboard, add one.
3. Change the class of this `UITabBarController` to `JFATabBarController` by selecting it, opening the Utilities pane, showing the Identity inspector, and changing the class to `JFATabBarController`.
4. If you have not done so already, create a "relationship segue - view controller" from the `JFATabBarController` to each view controller you want accessible from the tab bar.
5. For each view controller accessible from the tab bar, either set the name and image of the tab-bar item or change the identifier to a system item like "Favorites" or "Bookmarks".

## Constants
There are two constants of interest in `JFATabBarController.m`.

MAX_TAB_COUNT is the maximum number of tab-bar items to show at once. You are not limited to `UITabBarController`’s five.

TAB_ANIMATION_DURATION is the duration of the tab-changing animation. The larger the number, the longer the duration. Set this to 0.0 to prevent animation.

## Notes
I have tested `JFATabBarController` extensively on iPhone 4, iPhone 4S, iPhone 5S, iPad 2, iPad Mini, and iPad Air.

Because the app for which I created `JFATabBarController`, Immigration, has no need for `UITabBarController`’s localization, badge, or accessibility features, `JFATabBarController` does not currently support them. My app may require these features at some point, and `JFATabBarController` will support them then. I also welcome pull requests.

For a video of `JFATabBarController` in action, see https://vimeo.com/102583744 

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
