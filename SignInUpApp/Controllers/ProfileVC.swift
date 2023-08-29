//
//  ProfileVC.swift
//  SignInUpApp
//
//  Created by Мартынов Евгений on 29.08.23.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBAction func deleteAccountAction() {
        UserDafultsService.cleanUserDefauts()
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func logOutAction() {
        navigationController?.popToRootViewController(animated: true)
    }
}
