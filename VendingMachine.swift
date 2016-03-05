//
//  VendingMachine.swift
//  Confectionary
//
//  Created by Evan Turner on 3/5/16.
//  Copyright © 2016 evturn. All rights reserved.
//

import Foundation

protocol VendingMachineType {
  var selection: [VendingSelection] { get }
  var inventory: [VendingSelection: ItemType] { get set }
  var amountDeposited: Double { get set }
  
  init(inventory: [VendingSelection: ItemType])
  func vend(selection: VendingSelection, quantity: Double) throws
  func deposit(amount: Double)
}

protocol ItemType {
  var price: Double { get }
  var quantity: Double { get set }
}

enum InventoryError: ErrorType {
  case InvalidResource
  case ConversionError
}

class PlistConverter {
  class func dictionaryFromFile(resource: String, ofType type: String) throws -> [String: AnyObject] {
    guard let path = NSBundle.mainBundle().pathForResource(resource, ofType: type) else {
      throw InventoryError.InvalidResource
    }
    
    guard let dictionary = NSDictionary(contentsOfFile: path),
    let castDictionary = dictionary as? [String: AnyObject] else {
      throw InventoryError.ConversionError
    }
    
    return castDictionary
  }
}

enum VendingSelection {
  case Soda
  case DietSoda
  case Chips
  case Cookie
  case Sandwich
  case Wrap
  case CandyBar
  case PopTart
  case Water
  case FruitJuice
  case SportsDrink
  case Gum
}

struct VendingItem: ItemType {
  let price: Double
  var quantity: Double
}

class VendingMachine: VendingMachineType {
  let selection: [VendingSelection] = [
    .Soda, .DietSoda, .Chips, .Cookie,
    .Sandwich, .Wrap, .CandyBar, .PopTart,
    .Water, .FruitJuice, .SportsDrink, .Gum
  ]
  var inventory: [VendingSelection: ItemType]
  var amountDeposited: Double = 10.0
  
  required init(inventory: [VendingSelection: ItemType]) {
    self.inventory = inventory
  }
  
  func vend(selection: VendingSelection, quantity: Double) throws {
    // Sup
  }
  
  func deposit(amount: Double) {
    // Hi
  }
  
}
