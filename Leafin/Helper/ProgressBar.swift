//
//  ProgressBar.swift
//  Leafin
//
//  Created by Farendza Muda on 04/12/21.
//

import Foundation
import SwiftUI

struct BarLine: View{
    @State var currentProgress: CGFloat = 155.0
    
    var body: some View{
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(Color.PassiveBar)
                .frame(width: 314, height: 15)
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(Color.ActionColor)
                .frame(width: currentProgress, height: 15)
        }
    }
}
