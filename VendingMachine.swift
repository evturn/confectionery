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
