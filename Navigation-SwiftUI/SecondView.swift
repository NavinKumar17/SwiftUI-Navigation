//
//  SecondView.swift
//  Navigation-SwiftUI
//
//  Created by Krish on 26/11/19.
//  Copyright © 2019 Krish. All rights reserved.
//

import SwiftUI

struct SecondView: View {

    var body: some View {
        
        Image("PassiveCrashImage")
        .resizable()
            .padding(0.0)
            .frame(width: 150, height: 150)
        .clipShape(Circle())
        }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
