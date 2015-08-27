//: [Previous](@previous)

import UIKit

let str = textFromResource("gettysburg")!

let storage = NSTextStorage(string: str)
let layout = NSLayoutManager()
let layout2 = NSLayoutManager()
storage.addLayoutManager(layout)
storage.addLayoutManager(layout2)
let container = NSTextContainer(size: CGSizeMake(250, 300))
let container2 = NSTextContainer(size: CGSizeMake(250, 300))
layout.addTextContainer(container)
layout2.addTextContainer(container2)

let view = UIView(frame: CGRectMake(0, 0, 500, 600))
let textView = UITextView(frame: CGRectMake(0, 0, 500, 300), textContainer: container)
let textView2 = UITextView(frame: CGRectMake(0, 300, 250, 300), textContainer: container2)
view.addSubview(textView)
view.addSubview(textView2)
textView.scrollEnabled = false
textView2.scrollEnabled = false
view

for var i = 0; i < 20; i++ {
    let range = NSString(string: storage.string).rangeOfString(" are ")
    if range.length > 0 {
        let replaceRange = NSMakeRange(range.location + 1, range.length - 2)
        let attributed = NSAttributedString(string: "ARE", attributes: [NSFontAttributeName: UIFont.boldSystemFontOfSize(15)])
        storage.replaceCharactersInRange(replaceRange, withAttributedString: attributed)
    }
}

view

//: [Next](@next)
