//
//  HomeConfiguratorProtocol.swift
//  COVStats
//
//  Created by Igor Podolskiy on 21.09.2020.
//  Copyright © 2020 Igor Podolskiy. All rights reserved.
//

import UIKit

protocol HomeConfiguratorProtocol {
    func configure(with viewController: HomeViewController)
    func assemblyModule() -> UIViewController
}
