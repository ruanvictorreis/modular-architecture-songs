//
//  SongsViewController.swift
//  Songs
//
//  Created by Ruan Reis on 11/08/20.
//

import UIKit

protocol SongsViewControllerProtocol: AnyObject {
    
    func setSongsTitle(withName title: String)
}

public class SongsViewController: UIViewController {
    
    var interactor: SongsInteractorProtocol!

    @IBOutlet private var songsTitle: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        interactor.fetchSongsTitle()
    }
}

extension SongsViewController: SongsViewControllerProtocol {
    
    func setSongsTitle(withName title: String) {
        songsTitle.text = title
    }
}
