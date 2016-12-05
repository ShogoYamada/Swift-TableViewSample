//
//  ViewController.swift
//  TableVIew
//
//  Created by 山田尚吾 on 2016/10/08.
//  Copyright © 2016年 山田尚吾. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    ///Edit:テキストを入力する場所
    @IBOutlet weak var submitTextEdit: UITextField!
    
    ///tableViewをOutlet接続
    @IBOutlet weak var tableView: UITableView!
    
    ///セルに表示するテキスト
    let texts = ["あ","い","う","え","お","か","き"]

    ///まず最初にここが呼ばれます
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    ///必要なTableViewのメソッド
    ///セルの行数追加
    func tableView(_ tableView:UITableView,numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    ///必要なTableViewメソッド
    ///セルのテキスト追加
    func tableView(_ tableView:UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel!.text = texts[indexPath.row]
        
        return cell
    }
    
    ///セルをタップしたときのクリックイベント
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath IndexPath:NSIndexPath) {
        print(texts[IndexPath.row])
    }
    
    ///登録ボタンをクリックしたときのクリックイベント
    @IBAction func addText(_ sender: AnyObject) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

