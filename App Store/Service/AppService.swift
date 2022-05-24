//
//  AppService.swift
//  App Store
//
//  Created by Paulo Koga on 23/05/22.
//

import Foundation

class AppService {
    
    static let shared = AppService()
    
    let API = "http://192.168.0.49"
    
    func buscaAppEmDestque (completion: @escaping ([AppDestaque]?, Error?)-> ()) {
        
        guard let url = URL(string: "\(API)/apps/apps-em-destaque") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, res, err)  in
            if let err = err {
                completion(nil, err)
                return
            }
            
            do {
                guard let data = data else {return}
                let apps = try JSONDecoder().decode([AppDestaque].self, from: data)
                completion(apps, nil)
                }catch let err {
                completion(nil, err)
                return
            }
            
        }.resume()
     }
   
    func buscaGrupo(tipo: String, completion: @escaping  (AppGrupo?, Error?)-> ()) {
        guard let url = URL (string: "\(API)/apps/\(tipo)") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, res, err)  in
            if let err = err {
                completion(nil, err)
                return
            }
            
            do {
                guard let data = data else {return}
                    let apps = try JSONDecoder().decode(AppGrupo.self, from: data)
                completion(apps, nil)
                }catch let err {
                completion(nil, err)
                return
            
            }
        }.resume()
    }
    
}
