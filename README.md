# Swift App BoilerPlate

[![License](https://img.shields.io/cocoapods/l/RMCircularAlert.svg?style=flat)](http://cocoapods.org/pods/RMCircularAlert)
[![Platform](https://img.shields.io/cocoapods/p/RMCircularAlert.svg?style=flat)](http://cocoapods.org/pods/RMCircularAlert)

An initial boilerplate for IOS apps written in swift

## Features
##### Storyboard flux without segues
```swift
// Instatiate ViewController like that
let dest = ExampleTableViewController.instantiateFromStoryboard(storyboard: .Main)
present(dest, animated: true, completion: nil)
```
##### Xib registering and usage
```swift
// Register your Xib on viewDidLoad for example
tableView.register(TableViewCell.self)
// Then deque your cell like that
let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as TableViewCell
```
##### Color from RGB
```swift
let color = UIColor.fromRGB("#FFFFFF")
```
##### Keyboard avoid view
```swift
// set your class to TextFieldScrollableViewController
class ExampleTableViewController: TextFieldScrollableViewController
// then on viewDidLoad set mainScrollView
mainScrollView = yourScrollView
```

## Colaboration

Feel free to contact me if you want to make any kind of changes in this project.

## Author

raulmo1337@gmail.com, raulmo1337@gmail.com

## License

RMCircularAlert is available under the MIT license. See the LICENSE file for more info.
