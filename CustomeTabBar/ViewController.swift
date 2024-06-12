//
//  ViewController.swift
//  CustomeTabBar
//
//  Created by Shivakumar Harijan on 16/05/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var KeyImage: UIImageView!
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var documentImage: UIImageView!
    
    @IBOutlet weak var passwordTextLabel: UILabel!
    @IBOutlet weak var designationTextLabel: UILabel!
    @IBOutlet weak var documentTextLabel: UILabel!
    @IBOutlet weak var homeTextLable: UILabel!
    let imgSelectedColor = UIColor.blue
    let unselectedColor = UIColor.gray
    let textSelectedColor = UIColor.black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TabBar"
        designableTabBar()
        updateTabBarImages(selectedIndex: 0)
        // Do any additional setup after loading the view.
    }
    
    func designableTabBar(){
        tabBarView.layer.cornerRadius = tabBarView.frame.size.height / 2
        //        tabBarUIView.clipsToBounds = true
        tabBarView.layer.borderWidth = 0.6
        tabBarView.layer.borderColor = UIColor.lightGray.cgColor
        tabBarView.layer.shadowColor = UIColor.darkGray.cgColor
        tabBarView.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        tabBarView.layer.shadowRadius = 6
        tabBarView.layer.shadowOpacity = 0.5
    }
    
    
    @IBAction func Hometapped(_ sender: UIButton) {
        let tag = sender.tag
        print("\(tag)")
        
        //        keyImage.layer.borderColor = UIColor.green.cgColor
        switch tag {
        case 1:
            let homeVC = HomeViewController(nibName: "HomeViewController", bundle: nil)
            addChild(homeVC)
            contentView.addSubview(homeVC.view)
            homeVC.view.frame = contentView.bounds
            homeVC.didMove(toParent: self)
            
        case 2:
            //            homeImage.tintColor = UIColor.brown
            //            HomeImage.tintColor = UIColor(red: 0, green: 210/255, blue: 0, alpha: 1)
            title = "Search"
            let searchVC = SearchViewController(nibName: "SearchViewController", bundle: nil)
            addChild(searchVC)
            contentView.addSubview(searchVC.view)
            searchVC.view.frame = contentView.bounds
            searchVC.didMove(toParent: self)
            
        case 3:
            let profileVC = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
            addChild(profileVC)
            contentView.addSubview(profileVC.view)
            profileVC.view.frame = contentView.bounds
            profileVC.didMove(toParent: self)
            
        case 4:
            let aboutVC = AboutViewController(nibName: "AboutViewController", bundle: nil)
            addChild(aboutVC)
            contentView.addSubview(aboutVC.view)
            aboutVC.view.frame = contentView.bounds
            aboutVC.didMove(toParent: self)
            
        default:
            print("Error")
        }
        
        updateTabBarImages(selectedIndex: tag - 1)
    }
    
    func updateTabBarImages(selectedIndex: Int) {
        let tabImageViews = [profileImage, documentImage, flagImage, KeyImage]
        let tabTextLabels = [homeTextLable, documentTextLabel, designationTextLabel, passwordTextLabel]
        
        for (index, imageView) in tabImageViews.enumerated() {
            if index == selectedIndex {
                imageView?.tintColor = imgSelectedColor
                popAnimate(view: imageView)
            } else {
                imageView?.tintColor = unselectedColor
            }
        }
        for (index, selectLabel) in tabTextLabels.enumerated() {
            if index == selectedIndex {
                selectLabel?.textColor = textSelectedColor
                popAnimate(view: selectLabel)
            } else {
                selectLabel?.textColor = unselectedColor
                selectLabel?.font = UIFont.boldSystemFont(ofSize: 12)
            }
        }
    }
    
    func popAnimate(view: UIView?) {
        guard let view = view else { return }
        
        UIView.animate(withDuration: 0.1, animations: {
            view.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { _ in
            UIView.animate(withDuration: 0.1) {
                view.transform = CGAffineTransform.identity
            }
        }
        
    }
}

