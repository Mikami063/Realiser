//
//  AlbumManager.swift
//  Realiser
//
//  Created by Mikami Kirigaya on 2023-01-04.
//

import Foundation

class AlbumManager:ObservableObject{
    @Published var albumItems: [AlbumItem]
    static let manager=AlbumManager()
    private init() {
        self.albumItems = [AlbumItem]()
        read()
    }
    func add(item: AlbumItem){
        albumItems.append(item)
        save()
    }
    func del(offsets: IndexSet){
        albumItems.remove(atOffsets: offsets)
        save()
    }
    func read(){
        if let data=UserDefaults.standard.data(forKey: "albumItems"){
            do{
                let decoder=JSONDecoder()
                albumItems=try decoder.decode([AlbumItem].self, from:data)
                //might be pretty problematic with !
            }catch{
                print("read error")
                albumItems=[AlbumItem(title: "sample1", id: "QtNIMB72Br0")]
            }
        }
        
    }
    func save(){
        let defaults = UserDefaults.standard
        do{
            let encoder=JSONEncoder()
            let data=try encoder.encode(albumItems)
            defaults.set(data, forKey: "albumItems")
        }catch{
            print("failed to save")
        }
    }
}
