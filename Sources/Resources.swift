import Foundation

public func textFromResource(named: String) -> String?
{
    if let url = NSBundle.mainBundle().URLForResource("gettysburg", withExtension: "txt") {
        if let data = NSData(contentsOfURL: url) {
            return NSString(data: data, encoding: NSUTF8StringEncoding) as? String
        }
    }
    
    return nil
}