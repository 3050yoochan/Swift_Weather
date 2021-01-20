//
//  ViewController.swift
//  WeatherApp
//
//  Created by Yoochan Oh on 2021/01/10.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var TempLabel: UILabel!
    @IBOutlet weak var HumidLabel: UILabel!
    @IBOutlet weak var WeatherLabel: UILabel!
    let decoder = JSONDecoder()
    
    struct Seoul: Decodable{
        var temp : Int
        var humidity : Int
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getInfo()
    }
    
    func getInfo()
    {
        let url = "https://api.openweathermap.org/data/2.5/weather?q=seoul&appid=64e83dd3ff52eae5bf12bd48a9555655"
        AF.request( url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: ["Content-Type":"application/json", "Accept":"application/json"])
                    .validate(statusCode: 200..<300)
                    .responseJSON { (json) in
                        //여기서 가져온 데이터를 자유롭게 활용하세요.
                        if let json2 = try? JSON(data: json.data!)
                        {
                            print(json2)
                            self.LocationLabel.text = "\(json2["name"])"
                            
                            var temp1 = "\(json2["main"]["temp"])"
                            let temp1_num = round((temp1 as NSString).doubleValue - 273.15)
                            self.TempLabel.text = String(temp1_num) + "°C"
                            
                            var hud = "\(json2["main"]["humidity"])"
                            let hud_num = round((hud as NSString).doubleValue)
                            self.HumidLabel.text = String(hud_num) + "%"
                            
                            var wetr = "\(json2["weather"][0]["description"])"
                            print(wetr)
                            self.WeatherLabel.text = String(wetr)
                        }
                        
                        
                        
                }
    }


}

