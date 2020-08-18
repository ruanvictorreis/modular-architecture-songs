//
//  SongsInteractor.swift
//  Songs
//
//  Created by Ruan Reis on 11/08/20.
//

import Foundation

protocol SongsInteractorProtocol {
    
    func fetchSongsTitle()
}

class SongsInteractor: SongsInteractorProtocol {
        
    var presenter: SongsPresenterProtocol!
    
    func fetchSongsTitle() {
        presenter.setSongsTitle(withName: "This is Songs module")
    }
}
