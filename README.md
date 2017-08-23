# TipTop
iOS Class Prework

# Pre-work - *TipTop*

**TipTop** is a tip calculator application for iOS.

Submitted by: **Terra Oldham**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] List anything else that you can get done to improve the app functionality!
- [X] Added images for "+" and "=" to improve look and feel and added
  color
- [X] Added stepper to calculate individual cost for groups

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://media.giphy.com/media/xTcf0SGyuKMGZgWM4U/giphy.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood?

**Answer:** The development of both the Storyboard and the Swift code editor is awesome. I like being able to change things both dynamically and statically while having an interface to help align the two, and curate the UI. I appreciate that there are UI components that have the functionality baked into them as well. For example, the stepper keeps track of the plus/minus count by adding or subtracting incrementally, and this makes implementing it much easier.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**  You can make strong references to an instance by assigning
a class instance to a property, constant or variable. This will prevent
the reference from being deallocated and will allow it to be accessible
moving forward. Strong references are not deallocated as long as the
strong reference persists. A strong reference cycle occurs when an
instance continually contains strong references (never has zero strong
references). This can be resolved by allowing some relationships to be
weak or unowned.

## License

    Copyright [2017] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
