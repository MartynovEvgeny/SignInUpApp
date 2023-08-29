//
//  SignInVC.swift
//  SignInUpApp
//
//  Created by Мартынов Евгений on 22.08.23.
//

import UIKit

class SignInVC: BaseViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var errorLbl: UILabel! {
        didSet { errorLbl.isHidden = true }
    }
    @IBOutlet weak var signInBtn: UIButton!
    
    // отрабатывает единожды
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        /// в идеале в UserDafult нужно записать булевое значени залогирован ли пользователь
        if let _ = UserDafultsService.getUserModel() {
            goToTabBarController()
        }
    }
    
    // этот метод вызывается перед каждым появлением этого экрана
    override func viewWillAppear(_ animated: Bool) {
        emailTF.text = ""
        passTF.text = ""
    }
    
    @IBAction func signInAction() {
        errorLbl.isHidden = true
        guard let email = emailTF.text,
              let pass = passTF.text,
              let userModel = UserDafultsService.getUserModel(),
              email == userModel.email,
              pass == userModel.pass
        else {
            errorLbl.isHidden = false
            return
        }
        
        goToTabBarController()
    }
    
    private func setupUI() {
//        signInBtn.isEnabled = false
        emailTF.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
        passTF.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
    }
    
    
    
    private func goToTabBarController() {
        let storyboard = UIStoryboard(name: "MainStoryboard", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
}

/// продолжение нашего класса
/// в extension могут быть только методы
extension SignInVC {
    
}
