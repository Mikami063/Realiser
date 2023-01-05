//
//  ContentView.swift
//  Realiser
//
//  Created by Mikami Kirigaya on 2023-01-03.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var manager=AlbumManager.manager
    //singleton manager here
    var body: some View {
        NavigationView{
            List{
                HStack{
                    NavigationLink(destination: AddView(), label: {
                        Text("Add").foregroundColor(.blue)
                    })
                }
                ForEach(manager.albumItems, id: \.self) { item in
                    ListRowView(title: item.title,id: item.id)
                }.onDelete(perform: removeItems)
            }
        }
        .navigationTitle("Youtube Album Manager v0.1")
    }
    
    func removeItems(at offsets: IndexSet){
        AlbumManager.manager.del(offsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


