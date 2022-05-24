//
//  BuscaService.swift
//  App Store
//
//  Created by Escritorio Axxis on 17/05/22.
//

import UIKit


class BuscaService {
    
    static let shared = BuscaService()
    
    func buscaApps (texto: String, completion: @escaping ([App]?, Error?) -> ()) {
 
        guard let url = URL(string: "http://192.168.0.124/apps?search=\(texto)") else {return}


        URLSession.shared.dataTask(with: url) { (Data, res, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            
            do {
                guard let Data = Data else {return}
                let apps = try JSONDecoder().decode([App].self, from: Data)
                completion(apps, nil)
                
                
            }catch let err {
                completion(nil, err)
                return
            }
        }.resume()
    }
}

