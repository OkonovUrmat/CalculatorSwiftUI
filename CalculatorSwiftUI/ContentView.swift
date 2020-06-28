//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Urmat on 6/28/20.
//  Copyright © 2020 Urmat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                ForEach(["7", "8", "9", "X"], id: \.self) { button in
                    Text(button)
                        .font(.system(size: 32))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
