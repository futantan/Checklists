//
//  ChecklistItem.swift
//  Checklists
//
//  Created by luckytantanfu on 6/24/15.
//  Copyright (c) 2015 futantan. All rights reserved.
//

import Foundation


class ChecklistItem: NSObject, NSCoding {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
    override init() {
        super.init()
    }
    
    // MARK: - NSCoding Protocol
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "Text")
        aCoder.encodeBool(checked, forKey: "Checked")
    }
    
    required init(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObjectForKey("Text") as! String
        checked = aDecoder.decodeBoolForKey("Checked")
        super.init()
    }
}
