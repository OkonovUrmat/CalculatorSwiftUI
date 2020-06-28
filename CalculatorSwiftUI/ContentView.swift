//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Urmat on 6/28/20.
//  Copyright © 2020 Urmat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let buttons = [
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                        }
                    }
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
