//
//  SongsBuilder.swift
//  Songs
//
//  Created by Ruan Reis on 11/08/20.
//

import UIKit

public class SongsBuilder {
    
    public init() {}
    
    public func build() -> SongsViewController? {
        let viewController = R.storyboard.main.songsViewController()
        
        let interactor = SongsInteractor()
        let presenter = SongsPresenter()
        
        viewController?.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
}
