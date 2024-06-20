//
//  File.swift
//  DispachOneDemo
//
//  Created by Pradip Deore on 18/06/24.
//

import Foundation
import UIKit

class Article {
  let name: String
  let descriptionString: String
  let type: String
  let idString: String
  
  init(name: String, descriptionString: String, type: String, idString: String) {
    self.name = name
    self.descriptionString = descriptionString
    self.type = type
    self.idString = idString
  }
  func displayCell(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
      fatalError("Subclasses must override displayCell(in: indexPath:)")
  }
}
