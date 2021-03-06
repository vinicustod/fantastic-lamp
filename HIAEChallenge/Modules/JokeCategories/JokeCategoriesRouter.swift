//
//  JokeCategoriesRouter.swift
//  HIAEChallenge
//
//  Created by Vinicius Custodio on 17/07/20.
//  Copyright © 2020 Vinicius Custodio. All rights reserved.
//

import UIKit

final class JokeCategoriesRouter: JokeCategoriesRouterProtocol {
    unowned let vc: UIViewController!
    
    init(_ view: UIViewController) {
        self.vc = view
    }
    
    func navigate(_ route: JokeCategoriesRoutes) {
        switch route {
        case .getJoke(let category):
            let jokeView = JokePageBuilder.make(category: category)
            
            vc.navigationController?.pushViewController(jokeView, animated: true)
        }
    }
    
    func dismiss() {
        vc.navigationController?.popViewController(animated: true)
    }
}
