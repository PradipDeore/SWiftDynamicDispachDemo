//
//  ViewController.swift
//  DispachOneDemo
//
//  Created by Pradip Deore on 18/06/24.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var articles: [Article] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register custom cell classes
        tableView.register(UINib(nibName: "RegularArticleCell", bundle: nil), forCellReuseIdentifier: "RegularArticleCell")
        tableView.register(UINib(nibName: "VideoArticleCell", bundle: nil), forCellReuseIdentifier: "VideoArticleCell")

        let regularArticle1 = RegularArticle(name: "Infosys loses ₹12,500 crore mega-deal", descriptionString: "Just days after a major personnel change in the top leadership, Narayana Murthy's firm Infosys announced that the deal between them and an unnamed global company has been terminated. The potential deal was worth $1.5 billion, reported the company filings.", type: "1", idString: "1")
      let regularArticle2 = RegularArticle(name: "Music platform BandLab CEO says AI is not the enemy:", descriptionString: "Musicians around the world have described artificial intelligence as a threat to creativity, but the CEO of one popular platform told AFP he thinks critics are looking at it all wrong.It's not called SongFinisher. It's called SongStarter. It's not trying to replace people's creativity... (with) a vending machine approach of a magic button where you press and a song comes out, Meng said in an interview with AFP.", type: "1", idString: "2")
      
      let videoArticle1 = VideoArticle(name: "Anushka & Virat shows bonds with her daughter over fun drawing activity",descriptionString: "https://static.toiimg.com/thumb/msid-111082394,imgsize-49626,width-400,resizemode-4/111082394.jpg", type: "3", idString: "3")

        // Populate articles array with different types of articles
        articles.append(regularArticle1)
        articles.append(videoArticle1)
        articles.append(regularArticle2)
     
        // Set data source
        tableView.dataSource = self
    }
  
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = articles[indexPath.row]
        return article.displayCell(in: tableView, indexPath: indexPath)
    }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
   
}
