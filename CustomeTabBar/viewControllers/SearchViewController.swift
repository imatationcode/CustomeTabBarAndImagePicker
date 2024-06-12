//
//  SearchViewController.swift
//  CustomeTabBar
//
//  Created by Shivakumar Harijan on 16/05/24.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Inside View Did Load")
        title = "Search"
        pri()

        // Do any additional setup after loading the view.
    }
    override func willMove(toParent parent: UIViewController?) {
      super.willMove(toParent: parent)

      if parent == nil {
        // View controller will be detached from parent (tab bar)
        removeFromParent()
        view.removeFromSuperview() // Ensure removal from view hierarchy
      }
    }
    func pri(){
        print("I am Responding")
    }

    @IBAction func middleBtn(_ sender: Any) {
        print("I am Responding")
    }
    

}
