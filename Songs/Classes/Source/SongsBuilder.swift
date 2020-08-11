//
//  SongsBuilder.swift
//  Songs
//
//  Created by Ruan Reis on 11/08/20.
//

import Foundation

public class SongsBuilder {
    
    public init() {}
    
    public func build() -> SongsViewController? {
        let bundle = Bundle(identifier: "org.cocoapods.Songs")
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyboard.instantiateViewController(
            withIdentifier: "SongsViewController") as? SongsViewController
        
        let interactor = SongsInteractor()
        let presenter = SongsPresenter()
        
        viewController?.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
}
