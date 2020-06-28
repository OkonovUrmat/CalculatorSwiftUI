//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Urmat on 6/28/20.
//  Copyright © 2020 Urmat. All rights reserved.
//

import SwiftUI

enum CalculatorButton: String {
    
    case zero, one, two, three, four, five, six
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
}

struct ContentView: View {
    let buttons: [[CalculatorButton]] = [
        [.one, .two, .three, .plus]
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 12) {
                
                HStack {
                    Spacer()
                    Text("42").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { button in
                            Text(button.rawValue)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(40)
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
