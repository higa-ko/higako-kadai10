//
//  ViewController.swift
//  Part10
//
//  Created by 葡萄酒 on 2021/08/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let area = [
        "北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県",
        "埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県",
        "岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県",
        "鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県",
        "佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"
    ]
    
    //表示するセルの個数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        area.count
    }
    
    //セルに表示するデータを指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var identifier = ""
        
        switch indexPath.row % 3 {
        case 0:
            identifier = "Cell1"
        case 1:
            identifier = "Cell2"
        case 2:
            identifier = "Cell3"
        default:
            print("エラー：割った数のあまりが0、1、2以外")
        }
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel!.text = area[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        
        return cell
    }
}
