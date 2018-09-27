//
//  ViewController.swift
//  JsonPosts
//
//  Created by Anand Nimje on 12/09/18.
//  Copyright © 2018 Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let jsonUrl = "https://jsonplaceholder.typicode.com/posts"
    
    var dataModel = [DataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        response()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44
    }
    
    func response() {
        guard let url = URL(string: jsonUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                self.dataModel = try JSONDecoder().decode([DataModel].self, from: data)
                print(self.dataModel)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch let error {
                print(error)
            }
            
        }.resume()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as? DataCell
        let data = dataModel[indexPath.row]
        cell?.idLabel.text = "\(data.id ?? 0)"
        cell?.bodyLabel.text = data.body
        cell?.titleLabel.text = data.title
        
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 55
//    }
}














