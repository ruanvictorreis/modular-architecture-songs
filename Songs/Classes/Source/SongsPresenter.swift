//
//  SongsPresenter.swift
//  Songs
//
//  Created by Ruan Reis on 11/08/20.
//

import Foundation

protocol SongsPresenterProtocol {
    
    func setSongsTitle(withName title: String)
}

class SongsPresenter: SongsPresenterProtocol {

    weak var viewController: SongsViewControllerProtocol!
    
    func setSongsTitle(withName title: String) {
        viewController.setSongsTitle(withName: title)
    }
}
