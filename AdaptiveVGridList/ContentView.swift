//
//  ContentView.swift
//  AdaptiveVGridList
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    var items = Item.stubs
    @State var selectedLayout: LayoutType = .single
    
    var body: some View {
       
        VStack(spacing: 0){
            
            Picker("Layout", selection: $selectedLayout) {
                ForEach(LayoutType.allCases, id: \.self){ loType  in
                 
                    switch loType {
                    case .single:
                         Image(systemName: "list.bullet")
                    case .double:
                         Image(systemName: "square.grid.2x2")
                    case .adaptive:
                         Image(systemName: "square.grid.2x2")
                    }
                    
                    
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: selectedLayout.columns, spacing: 1){
                    ForEach(items){ item in
                        switch (selectedLayout){
                        case .single:
                            SingleRow(title: item.title, subtitle: item.subtitle, imageName: item.imageName)
                            
                        default:
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                .animation(.default)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
