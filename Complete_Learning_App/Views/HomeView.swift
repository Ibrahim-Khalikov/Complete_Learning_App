//
//  ContentView.swift
//  Complete_Learning_App
//
//  Created by cloud_vfx on 12/08/21.
//

import SwiftUI

struct HomeView: View {
    
@EnvironmentObject var model: ContentModel
    
var body: some View {
    
        Text("helloossss")
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
