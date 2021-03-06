//
//  EducationEducationViewOutput.swift
//  COVStats
//
//  Created by Igor Podolsiy on 07/10/2020.
//  Copyright © 2020 Igor Podolskiy. All rights reserved.
//

protocol EducationViewOutput {
    func viewIsReady()
    func seeMoreButtonPressed()
    func reportButtonPressed()
    func viewModelsForPreventionsSegments() -> [EducationSegmentPreventionViewTabViewModel]
    func viewModelsForSymptomsSegments() -> [EducationSegmentSymptomsViewTabViewModel]
    func segmentedControlChangeIndex(index: Int)
}
