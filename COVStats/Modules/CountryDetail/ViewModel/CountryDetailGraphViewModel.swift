//
//  CountryDetailGraphViewModel.swift
//  COVStats
//
//  Created by Igor Podolskiy on 05.10.2020.
//  Copyright © 2020 Igor Podolskiy. All rights reserved.
//

import Foundation

struct CountryDetailGraphViewModel {
    let affectedYAxisData: [Int]
    let deathYAxisData: [Int]
    let startDay: Int

    var xAxisData: [Int] {
        return Array(startDay...min(affectedYAxisData.count+startDay,deathYAxisData.count+startDay))
    }
}
