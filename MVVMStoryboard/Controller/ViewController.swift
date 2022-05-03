//
//  ViewController.swift
//  MVVMStoryboard
//
//  Created by Bhumika Patel on 03/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    var viewModelUser = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelUser.vc = self
        // Do any additional setup after loading the view.
        viewModelUser.getAllUserData()
      //  tblView.register(UserCell.self, forCellReuseIdentifier: "UserCell")
        tblView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUser.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        let modelUser = viewModelUser.arrUser[indexPath.row]
        if let id = modelUser.id{
            cell?.lblId.text = "\(id)"
        }else{
            cell?.lblId.text = "No Id"
        }
       
        cell?.lblTitle.text = modelUser.title
        return cell!
    }
}
