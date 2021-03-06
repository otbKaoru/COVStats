//
//  CountryDetailGraphViewPreview.swift
//  COVStats
//
//  Created by Igor Podolskiy on 01.10.2020.
//  Copyright © 2020 Igor Podolskiy. All rights reserved.
//
import Foundation

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct CountryDetailGraphViewPreview: PreviewProvider {
    static var previews: some View {
        let viewController =  mockViewController()
        viewController.toPreview()
    }

}

fileprivate class mockViewController: UIViewController {

    private let header: CountryDetailGraphView = {
        let view = CountryDetailGraphView()
        view.configure(with: CountryDetailGraphViewModel(affectedYAxisData: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 4, 4, 7, 7, 7, 9, 31, 45, 46, 73, 73, 89, 99, 99, 190, 228, 331, 331, 387, 418, 418, 495, 530, 624, 695, 743, 821, 892, 966, 1061, 1156, 1212, 1314, 1415, 1544, 1613, 1673, 1735, 1755, 1832, 1884, 1955, 2011, 2081, 2114, 2145, 2170, 2192, 2207, 2224, 2235, 2235, 2245, 2401, 2408, 2463, 2490, 2506, 2517, 2534, 2566, 2576, 2591, 2612, 2620, 2626, 2632, 2642, 2663, 2678, 2691, 2710, 2716, 2726, 2744, 2760, 2770, 2810, 2819, 2834, 2836, 2840, 2850, 2853, 2874, 2876, 2878, 2882, 2892, 2903, 2906, 2909, 2915, 2917, 2918, 2937, 2937, 2952, 2967, 2980, 2997, 3049, 3058, 3068, 3088, 3108, 3112, 3121, 3134, 3148, 3203, 3227, 3237, 3256, 3266, 3287, 3302, 3310, 3321, 3343, 3366, 3376, 3390, 3409, 3432, 3458, 3486, 3511, 3519, 3562, 3589, 3622, 3672, 3732, 3772, 3803, 3826, 3883, 3910, 3939, 3964, 3983, 4007, 4012, 4048, 4077, 4110, 4135, 4166, 4193, 4227, 4279, 4336, 4401, 4477, 4587, 4662, 4737, 4855, 4974, 5123, 5270, 5421, 5623, 5749, 5942, 6177, 6381, 6632, 6858, 7075, 7222, 7472, 7684, 7934, 8138, 8381, 8664, 8819, 8987, 9280, 9531, 9800, 9977, 10134, 10317, 10524, 10757, 10998, 11200, 11386, 11524, 11663, 11832, 12080, 12452, 12734, 13036, 13240, 13420, 13730, 14041, 14400, 14738, 14978, 15142, 15595, 15928, 16286, 16627, 16913, 17228, 17444, 17707, 18123, 18475, 18886, 19346, 19613, 19842], deathYAxisData: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 4, 4, 5, 5, 6, 6, 13, 15, 17, 20, 22, 26, 28, 32, 38, 43, 49, 50, 53, 63, 68, 73, 79, 81, 83, 87, 92, 93, 98, 99, 101, 102, 105, 108, 110, 113, 116, 121, 121, 125, 130, 130, 134, 136, 138, 139, 140, 140, 143, 144, 146, 146, 147, 148, 150, 151, 151, 151, 152, 155, 156, 160, 162, 163, 165, 165, 166, 168, 169, 171, 171, 172, 173, 173, 175, 175, 175, 175, 179, 179, 179, 180, 180, 180, 180, 182, 183, 183, 183, 183, 183, 183, 184, 185, 187, 188, 189, 190, 190, 190, 190, 190, 191, 191, 191, 191, 191, 192, 192, 192, 192, 192, 192, 192, 193, 193, 193, 193, 193, 193, 193, 193, 193, 193, 194, 194, 194, 195, 197, 200, 201, 201, 201, 202, 202, 203, 203, 203, 206, 206, 208, 209, 209, 210, 210, 210, 211, 212, 213, 214, 216, 221, 223, 226, 228, 230, 232, 235, 235, 238, 240, 242, 242, 243, 248, 254, 259, 260, 262, 266, 271, 273, 278, 279, 280, 284, 289, 290, 293, 297, 300, 302, 305, 310, 313, 316, 325, 327, 331, 338, 344, 352, 357, 366, 369, 376, 379, 383, 388, 391, 393, 398, 405, 409], startDay: 0))
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(header)
        setupLayouts()
    }

    private func setupLayouts() {
        header.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10),
            header.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -500),
            header.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
}
#endif
