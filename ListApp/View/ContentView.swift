//
//  ContentView.swift
//  ListApp
//
//  Created by German Blonski on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var listViewModel = ListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(listViewModel.page?.data ?? [], id: \.self) { user in
                        UserRowView(person: user)
                    }
                } footer: {
                    VStack(alignment: .center) {
                        Text(listViewModel.page?.support.text ?? "")
                    }
                }
            }.navigationBarTitle("Users", displayMode: .inline)
                .onAppear() {
                    listViewModel.getData()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


