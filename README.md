# SwiftUI-practice-repo
This repository is for keeping track of my SwiftUI practice

# Topic Covered
* ## Gestures used in SwiftUI
    * **[LongPress Gesture](PracticeSiwftUI/PracticeSiwftUI/LongPressGesture):** functions a lot like the "Tap Gesture," except we can specify the amount of time that a user must press and hold before the action executes.
    * **[Magnification Gesture](PracticeSiwftUI/PracticeSiwftUI/MagnificationGesture):** It allow users to zoom-in and zoom-out on different images and objects on the screen.  real-world example- zooming in out on instagram post content.
    * **[Rotation Gesture](PracticeSiwftUI/PracticeSiwftUI/RotationGesture):** It allows users to easily rotate objects on the screen.
    * **[Drag Gesture](PracticeSiwftUI/PracticeSiwftUI/DragGesture):** It allows users to easily (and naturally) move items around the screen. real-world example- Tinder swipe card & swipe-up gesture to drag views up and down.
* ## ScrollViewReader
   [ScrollViewReader](PracticeSiwftUI/PracticeSiwftUI/ScrollViewReader) is a super-handy accessory to a ScrollView that allows programmatically scrolling to a specific location within the ScrollView's content. It can quickly scroll to the top, bottom, or any specific item with just a few lines of code!
* ## GeometryReader
   [GeometryReader](PracticeSiwftUI/PracticeSiwftUI/GeometryReader) can find the content's exact size and location on the screen! Additionally, the GeometryReader is adaptive when the device rotates, so it is the perfect helper if we want to resize the view when a user switches from portrait to landscape mode (or vice-versa).
* ## Multiple Sheets from a single View
   [Multiple Sheets from a single View](PracticeSiwftUI/PracticeSiwftUI/MultipleSheets) related problem is one of the most common problems SwiftUI developers post on StackOverflow.Here I first recreate the problem and then go over three easy-to-implement solutions that we can include in our iOS applications. 
Three solutions are: 
   1.    using Binding
   2.    using multiple .sheet
   3.    using $item _(it is also helpful when we have a large number of sheets to present)_
* ## Mask modifier
   [Mask modifier](PracticeSiwftUI/PracticeSiwftUI/MaskModifier) can make objects take the shape of others. It becomes extremely handle when creating complex animations. Here I create a basic star rating component, and then take it to the next level by applying a mask and custom animations. During the process, also learn how to use .allowsHitTesting() to disable touches on certain layers of the View. The end product looks very professional and is something we can use in production applications!
* ## Sound Effects
   Add [Sound Effects](PracticeSiwftUI/PracticeSiwftUI/SoundEffect) to SwiftUI applications. To add sounds, I dip into the AVKit framework and learn how to use an AVAudioPlayer. I also learn how to implement a Singleton class so that it can be easily reused and accessed across an application.


* ## ..

## Acknowledgement
* [Swiftful Thinking](https://www.youtube.com/@SwiftfulThinking)
* [100 days of SwiftUI](https://www.hackingwithswift.com/100/swiftui)
