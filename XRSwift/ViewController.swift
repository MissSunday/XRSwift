//
//  ViewController.swift
//  XRSwift
//
//  Created by 朵朵 on 2022/1/11.
//

import UIKit
import SnapKit

class ViewController: BaseViewController ,UITableViewDelegate,UITableViewDataSource {

    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "666"
        //self.edgesForExtendedLayout = UIRectEdge.init(rawValue: 0)
        self.UI()
        self.view.backgroundColor = .white
    }

    func UI() {
        self.tableView = UITableView(frame: self.view.frame, style: .plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.tableFooterView = UIView.init()
        self.view.addSubview(self.tableView)
        self.tableView.snp.makeConstraints { make in
            make.edges.equalTo(self.view)
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = String.init(format: "第%ld行", indexPath.row)
        return cell;
    }
}

