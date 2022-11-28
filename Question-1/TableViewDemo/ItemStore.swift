//
//  ItemStore.swift
//  TableViewDemo
//
//  Created by Bharath Reddy on 25/11/22.
//

import UIKit
//import Item
class ItemStore: NSObject {
    var allItems=[Item]();
    
    @discardableResult func createItem() -> Item{
        let newItem = Item(itemName: "onion", itemCount: 3);
        allItems.append(newItem);
        return(newItem);
    }
    
    
}
