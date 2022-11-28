//
//  Item.swift
//  TableViewDemo
//
//  Created by Bharath Reddy on 25/11/22.
//

import UIKit

class Item:Equatable{
    var itemName:String;
    var itemCount:Int;
    
    init(itemName : String ,itemCount : Int){
        self.itemName = itemName;
        self.itemCount = itemCount;
        
    }
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.itemName == rhs.itemName
     }
    
}
