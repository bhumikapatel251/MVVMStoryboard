//
//  UserViewModel.swift
//  MVVMStoryboard
//
//  Created by Bhumika Patel on 03/05/22.
//

import UIKit

class UserViewModel{
    weak var vc: ViewController?
    var arrUser = [UModel]()
    
    func getAllUserData(){
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/todos/")!) { (data, respose, error) in
            if error == nil{
                if let data = data {
                    do{
                        let userResponse = try JSONDecoder().decode([UModel].self, from: data)
                        print(userResponse)
                    }catch let err{
                        print(err.localizedDescription)
                        
                    }
                }
            }else{
                print(error?.localizedDescription)
            }
        }.resume()
    }
}


