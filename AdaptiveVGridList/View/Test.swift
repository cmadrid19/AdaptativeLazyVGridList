//
//  Text.swift
//  AdaptiveVGridList
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct Test: View {
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 200), spacing: 4)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false){
            LazyVGrid(columns: columns,spacing: 4){
                ForEach(0..<32){ i in
                    Image("image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
            }
        }
        .padding(4)
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
            .previewDevice("iPad Pro (12.9-inch) (4th generation)")
        Test()
            .previewDevice("iPhone 11")
    }
}
