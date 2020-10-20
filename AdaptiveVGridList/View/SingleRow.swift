//
//  SingleRow.swift
//  AdaptiveVGridList
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct SingleRow: View {
    
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        HStack{
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4){
                Text(title)
                    .font(.headline)
                
                Text(subtitle)
                    .font(.subheadline)
            }
            
            Spacer()
            
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 16)
    }
}

struct SingleRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleRow(title: "Title 1", subtitle: "Subtitle 1", imageName: "image-1")
    }
}
