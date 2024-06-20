//
//  RegularArticleCell.swift
//  DispachOneDemo
//
//  Created by Pradip Deore on 18/06/24.
//

import UIKit

class RegularArticleCell: UITableViewCell {

  @IBOutlet var descriptionNameLabel: UILabel!
  @IBOutlet var titleNameLabel: UILabel!
  
  override func awakeFromNib() {
      super.awakeFromNib()
      // Initialization code
  }
}
class RegularArticle : Article {
  override func displayCell(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "RegularArticleCell", for: indexPath) as? RegularArticleCell
    cell?.titleNameLabel.text = self.name
    cell?.descriptionNameLabel.text = self.descriptionString
    return cell ?? UITableViewCell()
  }
}
