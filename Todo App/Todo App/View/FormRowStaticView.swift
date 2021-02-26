//
//  FormRowStaticView.swift
//  Todo App
//
//  Created by macOS User on 24/02/21.
//

import SwiftUI

struct FormRowStaticView: View {
    //: Mark Properties
    
    var icon: String
    var firstText: String
    var secondText: String
    
    //: Mark Body
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(.white)
            }//:ZStack
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(firstText)
                .foregroundColor(Color.gray)
            Spacer()
            Text(secondText)
        }//:HStack
    }
}

//: Mark Preview
struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", firstText: "application", secondText: "Todo")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
