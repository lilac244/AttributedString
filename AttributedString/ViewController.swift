//
//  ViewController.swift
//  AttributedString
//
//  Created by tsuyoshi on 2020/02/19.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title:String = "title here"
        //let bold14:NSFont = NSFont.boldSystemFont(ofSize: 32.0)
        let font = NSFont(name: "osaka", size: 32.0)
        let textColor:NSColor = .red
        let textParagraph:NSMutableParagraphStyle = NSMutableParagraphStyle()
        textParagraph.lineSpacing = 20.0  /*this sets the space BETWEEN lines to 10points*/
        //textParagraph.maximumLineHeight = 12.0/*this sets the MAXIMUM height of the lines to 12points*/
        let attribs = [
            NSAttributedString.Key.font:font,
            NSAttributedString.Key.foregroundColor:textColor,
            NSAttributedString.Key.paragraphStyle:textParagraph
        ]
        let attrString:NSAttributedString = NSAttributedString.init(string: title, attributes: attribs)
        self.textView.textStorage?.setAttributedString(attrString)
        //self.textView.string = title
    }

}

