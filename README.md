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
* ## Haptics and Vibrations
   Add [Haptics and Vibrations](PracticeSiwftUI/PracticeSiwftUI/HapticsAndVibrations) to a SwiftUI application. We can choose from a few vibration types/styles that Apple provides to us. Which are: 
   * types: success, warning, error
   * styles: light, medium, heavy, rigid, soft

   _(Note: in order to test haptics, we need to run the app on a real device)_
* ## Local Notification
   [Local Notifications](PracticeSiwftUI/PracticeSiwftUI/LocalPushNotifications%20) are scheduled locally and delivered by the same device. First request permissions from the user and then schedule the local notifications with 3 different **triggers**.
   * [time](https://github.com/SajidHShanta/SwiftUI-practice-repo/commit/148f543bfdb06fbf814996e9e8ec757b69b844c2)
   * [calendar / date](https://github.com/SajidHShanta/SwiftUI-practice-repo/commit/0542ec2e90dbcaba81445d763906f19730789aba)
   * [location](https://github.com/SajidHShanta/SwiftUI-practice-repo/commit/60566ce4ebd2ddfb992839feb7bdbcaf94cebdee)
   
   and lastly we can [cancel all local notifications](https://github.com/SajidHShanta/SwiftUI-practice-repo/commit/455dd595dca070a95f462d9caee6068794b949c9).
* ## Hashable protocol
   [Hashable protocol](PracticeSiwftUI/PracticeSiwftUI/Hashable) is very similar to the Identifiable protocol, which is another way to give a unique identifier to an object. When we use hash values in SwiftUI applications, it's usually to let the system identify which object is which.
* ## Manipulate Data
   Sometimes we need to [Manipulate Data](PracticeSiwftUI/PracticeSiwftUI/ManipulateData) in app before displaying content on the screen. 3 super-efficient modifiers that Apple provides us to Manipulate Data: 

   * Sort - organize data by criteria
   * Filter - create a subset of your data
   * Map - transform data from one type to another

   lastly, we combine all three modifiers.
* ## [Core Data](https://github.com/SajidHShanta/CoreData-SwiftUI/)
   * ### [Explore CoreData](https://github.com/SajidHShanta/CoreData-SwiftUI/tree/main/ExploreCoreData/ExploreCoreData)
      **CRUD** functions by learning how to Create, Read, Update, and Delete data within Core Data.
   In addition to implementing the CRUD (Create, Read, Update, Delete) functions, we filter (predicate) Core Data fetch requests. We also properly delete      Core Data relationships by using Deny, Cascade, and Nullify delete rules.

   * ### [Core Data with MVVM](https://github.com/SajidHShanta/CoreData-SwiftUI/tree/main/CoreDataWithMVVM/CoreDataWithMVVM)
      Connect Core Data to our app using a ViewModel in MVVM (Model-View-ViewModel architecture). The main benefit of this method is that we can separate our    code so that the code relating to updating Core Data is totally separate from the code relating to the View (the UI).
      
   * ### [Core Data Relationships](https://github.com/SajidHShanta/CoreData-SwiftUI/tree/main/CoreDataRelationships/CoreDataRelationships)
      Create and manage multiple Core Data entities that have relationships between them. We develop a mock application that contains three types of entities: Businesses, Departments, and Employees. These entities will have many relationships between them, including one-to-one and one-to-many relationships!
* ## Multi Threading
   [Multi Threading](PracticeSiwftUI/PracticeSiwftUI/BackgroundThread) with background threads and queues. By default, all code executed on the "main thread", however, if the main thread ever gets overwhelmed with tasks, it can slow down, freeze, or even crash our app. Apple provides us with easy access to many other threads that we can use to offload some of the work! How to add different threads, how to perform tasks on a background thread, and how to return back to the main thread afterward. We usually use Multi Threading in data intensive tasks, such as downloading data from the internet.
* ## Weak Self
   We use [Weak references](PracticeSiwftUI/PracticeSiwftUI/WeakSelf) instead of "strong references" to keep Automatic Reference Counting (ARC) count low. Swift uses Automatic Reference Counting (ARC) to manage app’s memory usage. As a developer, we need to try to keep the ARC count as low as possible, which will keep app running fast and efficiently.
   [NB: we use weak self, while dealing with large data]
* ## Typealias
   We use [Typealias](PracticeSiwftUI/PracticeSiwftUI/Typealias) to create an alias (another name) for an existing type! This is used much more frequently in large projects / codebases when it becomes more efficient to create a new name for a type rather than (1) a totally new type or (2) refactoring code.
* ## Escaping Closures
   We use [@escaping closures](PracticeSiwftUI/PracticeSiwftUI/Escaping) to deal with returning from functions when using asynchronous code. This is code that does NOT execute immediately, but rather at a future point in time. This becomes extremely important when we need to download data from the internet!
* ## Codable, Decodable, and Encodabl
   We use [Codable = (Decodable + Encodabl)](PracticeSiwftUI/PracticeSiwftUI/Codable) to "decode" and "encode" data in our application. This is especially useful for downloading data from the internet, because when we download data it will come as a foreign data type (usually JSON data). We then use Codable to transform (or "decode") the JSON data into a data type that we have in our iOS application. Here I explore how Codable is actually using Decodable and Encodable protocols behind the scenes to transform the data and then learn how to implement Codable itself.
* ## Download JSON from API with URLSession and @escaping closure
   We already covered about background threads, weak self, and Codable - all of which we will use to efficiently [download data from an API](PracticeSiwftUI/PracticeSiwftUI/DownloadWithEscaping). We use a URLSession to connect to a public API to download posts in the form of JSON data. We will then convert the data into our local model, and display them on the screen.

* ## ..

## Acknowledgement
* [Swiftful Thinking](https://www.youtube.com/@SwiftfulThinking)
* [100 days of SwiftUI](https://www.hackingwithswift.com/100/swiftui)
