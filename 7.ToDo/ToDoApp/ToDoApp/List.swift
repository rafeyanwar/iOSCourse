//
//  List.swift
//  ToDoApp
//
//  Created by Rafey Anwar on 2/4/17.
//  Copyright © 2017 Rafey Anwar. All rights reserved.
//

import Foundation

public class List : NSObject{
    public var listOfItems: [String] = []
    
    public override init() {
        super.init()
    }
    
    public func addItemToList(item: String) {
        listOfItems.append(item)
    }
    
    public func removeItemFromList(index: Int) {
        listOfItems.remove(at: index)
    }
}
