//: [Previous](@previous)

import UIKit

let str = textFromResource("gettysburg")!

let storage = NSTextStorage(string: str)
let layout = NSLayoutManager()
storage.addLayoutManager(layout)
let container = NSTextContainer(size: CGSizeMake(500, 300))
layout.addTextContainer(container)

var lbl = UITextView(frame: CGRectMake(0, 0, 500, 300), textContainer: container)

//: [Next](@next)
