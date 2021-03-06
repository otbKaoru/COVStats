//
//  CountryDetailConfiguratorProtocol.swift
//  COVStats
//
//  Created by Igor Podolskiy on 30.09.2020.
//  Copyright © 2020 Igor Podolskiy. All rights reserved.
//

import Foundation
import UIKit

protocol CountryDetailConfiguratorProtocol {
    func configure(with viewController: CountryDetailViewController)
    func assemblyModule() -> UIViewController
    func assemblyWithViewModel(viewModel: CountryDetailHeaderViewModel) -> UIViewController
}
