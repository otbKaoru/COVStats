//
//  GlobalSummaryConfigurator.swift
//  COVStats
//
//  Created by Igor Podolskiy on 21.09.2020.
//  Copyright © 2020 Igor Podolskiy. All rights reserved.
//

import UIKit

class GlobalSummaryConfigurator: GlobalSummaryConfiguratorProtocol {

    func configure(with viewController: GlobalSummaryViewController) {

        let router = GlobalSummaryRouter()
        router.viewController = viewController

        let presenter = GlobalSummaryPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = GlobalSummaryInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

    func assemblyModule() -> UIViewController {
        let viewController = GlobalSummaryViewController()
        configure(with: viewController)
        return viewController
    }
}
