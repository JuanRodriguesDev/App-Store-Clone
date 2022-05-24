//
//  BaseTabeBarVC.swift
//  App Store
//
//  Created by Escritorio Axxis on 13/05/22.
//

import UIKit

class baseTabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let HojeVC = self.criarTabItem(viewController: UIViewController(), titulo: "Hoje", imagem: "icone-hoje")
        
        let appVC = self.criarTabItem(viewController: AppsVC(), titulo: "Apps", imagem: "icone-apps")
        
        let buscaVC = self.criarTabItem(viewController: BuscaVC(), titulo: "Busca", imagem: "icone-busca")
        
        
        viewControllers = [
            HojeVC,
            appVC,
            buscaVC
        ]
        
        selectedIndex = 1
    }
    
    func criarTabItem (viewController: UIViewController, titulo: String, imagem: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        
        viewController.navigationItem.title = titulo
        viewController.tabBarItem.title = titulo
        viewController.tabBarItem.image = UIImage(named: imagem)
        viewController.view.backgroundColor = .white
        
        return navController
        
    }
    
}

    
