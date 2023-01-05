//
//  AddView.swift
//  Realiser
//
//  Created by Mikami Kirigaya on 2023-01-04.
//

import SwiftUI

struct AddView: View {
    @State var title: String = ""
    @State var id: String = ""
    @State var showAlert: Bool=false
    @StateObject var manager=AlbumManager.manager
    
    var body: some View {
        VStack{
            Text("Adding View")
            Text("videoid tutorial:\nhttps://www.youtube.com/watch?v=QtNIMB72Br0&list=...\nAny thing after watch?v= and before &list= is video id")
            Text("\nsweep right to delete")
            TextField("enter album title", text: $title)
            TextField("enter video id", text: $id)
            Button("submit"){
                if(title=="" || id==""){
                    showAlert.toggle()
                }else{
                    manager.add(item: AlbumItem(title: title, id: id))
                }
            }.alert(isPresented: $showAlert, content:{ Alert(title: Text("name or id is invalid"))})
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
