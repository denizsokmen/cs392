//
//  BugReport.swift
//  Raid
//
//  Created by student7 on 30/12/14.
//  Copyright (c) 2014 student7. All rights reserved.
//

import Foundation

class BugReport {
    var description: String!
    var title: String!
    var priority: Int!
    var solved: Bool!
    var id: Int!
    
    init(nm : String, prio: Int) {
        title = nm
        priority = prio
        id = 1
    }
    
    
}

