//
//  WelcomeVC.swift
//  SignInUpApp
//
//  Created by Мартынов Евгений on 24.08.23.
//

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var infoLbl: UILabel!
    
    var userModel: UserModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func continueAction() {
        //TODO: sava data
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func setupUI() {
        infoLbl.text = "\(userModel?.name ?? "") to our Cool App"
    }
}
