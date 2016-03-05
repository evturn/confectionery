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
