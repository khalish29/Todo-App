//
//  FormRowLinkView.swift
//  Todo App
//
//  Created by macOS User on 24/02/21.
//

import SwiftUI

struct FormRowLinkView: View {
    //: Mark properties
    
    var icon: String
    var color: Color
    var text: String
    var link: String
    
    //: Mark Body
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous).fill(color)
                Image(systemName: icon)
                    .foregroundColor(.white)
            }//:ZStack
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(text)
                .foregroundColor(Color.gray)
            Spacer()
            
            Button(action: {
                //: Buka Link
                guard let url = URL(string: self.link),
                      UIApplication.shared.canOpenURL(url) else {
                    return
                }
                UIApplication.shared.open(url as URL)
            })  {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
            }//: button buka link
            .accentColor(Color(.systemGray2))
        }//:HStack
    }
}
    


//: Mark Previews
struct FormRowLinkView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
