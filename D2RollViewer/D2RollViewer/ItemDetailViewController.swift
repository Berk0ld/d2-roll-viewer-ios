//
//  ItemDetailViewController.swift
//  D2RollViewer
//
//  Created by amoskvin on 2/1/19.
//  Copyright © 2019 D2RollViewer. All rights reserved.
//

import Foundation
import UIKit

class ItemDetailViewController: UIViewController {
    struct Props {
        let name: String
        let description: String
        let classRestriction: ClassRestriction
        let lightLevel: LightLevel
        let mobility: ArmorStat
        let resilence: ArmorStat
        let restoration: ArmorStat
    }
    
    var props: Props? {
        didSet {
            guard let props = props else { return }
            guard isViewLoaded else { return }
            render(props: props)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let props = props else { return }
        render(props: props)
    }
    
    func render(props: Props) {
        // TODO: writer rendering code here
    }
}
