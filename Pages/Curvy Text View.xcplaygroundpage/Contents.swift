//: [Previous](@previous)

import UIKit

let str = textFromResource("gettysburg")!

let storage = NSTextStorage(string: str)
let style = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
style.alignment = NSTextAlignment.Justified
storage.setAttributes([NSParagraphStyleAttributeName: style], range: NSMakeRange(0, str.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)))

let layout = NSLayoutManager()
storage.addLayoutManager(layout)

let container = NSTextContainer()
container.exclusionPaths = [UIBezierPath(ovalInRect: CGRectMake(-50, 0, 200, 300)), UIBezierPath(ovalInRect: CGRectMake(360, 0, 200, 300))]
container.widthTracksTextView = true
layout.addTextContainer(container)

var lbl = UITextView(frame: CGRectMake(0, 0, 500, 300), textContainer: container)

//: [Next](@next)
