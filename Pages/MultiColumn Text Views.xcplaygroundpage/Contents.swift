//: [Previous](@previous)

import UIKit

let str = textFromResource("gettysburg")!

var storage = NSTextStorage(string: str)
var layout = NSLayoutManager()
storage.addLayoutManager(layout)

var view = UIView(frame: CGRectMake(0, 0, 500, 300))
var x = 0 as CGFloat
let n = 5
for index in 1...n {
    let width = 500/CGFloat(n) as CGFloat
    let container = NSTextContainer(size: CGSizeMake(width, 300))
    layout.addTextContainer(container)
    
    let textView = UITextView(frame: CGRectMake(x, 0, width, 300), textContainer: container)
    view.addSubview(textView)
    x += width
}

view


//: [Next](@next)
