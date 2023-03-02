//import UIKit
//
//let testJson: [String: Any] = [
//    "name": "John",
//    "age": 19.5,
//    "isAdult": true
//]
//
//let sex = testJson["age"] as? Int
//let isAdult: Bool = testJson["isAdult"] as? Bool ?? true

import Foundation
////“:”是指型態，所以這段代表isAdult是一個布林值．
//// as? Bool是指將找的 = testJson["isAdult"] 轉型成一個Optional的布林值
//// ?? true 如果"as? Bool"轉型失敗則給預設值true
//
//
//let name = testJson["name"]
//
//
//
//let jsonArray: [[String: Any]] = [
//    [
//        "age": 18,
//        "name": 1,
//        "sex": "F",
//        "addr": [
//            "city": "台北市",
//            "area": "信義區"
//        ]
//    ],
//    [
//        "age": 21,
//        "name": "John",
//        "sex": "M",
//        "addr": [
//            "city": "台北市",
//            "area": "中山區"
//        ]
//    ],
//    [
//        "age": 79,
//        "name": "Jacky",
//        "sex": "F",
//        "addr": [
//            "city": "新北市",
//            "area": "林口區"
//        ]
//    ],
//    [
//        "age": 50,
//        "name": "Johnson",
//        "sex": "M",
//        "addr": [
//            "city": "台北市",
//            "area": "信義區"
//        ]
//    ],
//    [
//        "age": 25,
//        "name": "Tina",
//        "sex": "F",
//        "addr": [
//            "city": "桃園市",
//            "area": "八德區"
//        ]
//    ],
//    [
//        "age": 22,
//        "name": "Sandra",
//        "sex": "F",
//        "addr": [
//            "city": "高雄市",
//            "area": "前鎮區"
//        ]
//    ],
//    [
//        "age": 30,
//        "name": "ChiChi",
//        "sex": "M",
//        "addr": [
//            "city": "新北市",
//            "area": "新店區"
//        ]
//    ],
//    [
//        "age": 18,
//        "name": "Tee",
//        "sex": "F",
//        "addr": [
//            "city": "台北市",
//            "area": "信義區"
//        ]
//    ],
//    [
//        "age": 25,
//        "name": "Lee",
//        "sex": "F",
//        "addr": [
//            "city": "桃園市",
//            "area": "桃園區"
//        ]
//    ],
//    [
//        "age": 13,
//        "name": "Chen",
//        "sex": "F",
//        "addr": [
//            "city": "桃園市",
//            "area": "桃園區"
//        ]
//    ],
//    [
//        "age": 15,
//        "name": "Lala",
//        "sex": "F",
//        "addr": [
//            "city": "台北市",
//            "area": "文山區"
//        ]
//    ]
//]
//
////jsonArray
//
////for json in jsonArray {
////    let name = json["name"] as? String ?? ""
////    // ?? "" 如果沒有成功轉型成字串那就給他一個“”空字串
////
////    let age = json["age"] as? Int ?? 0
////    print(name,age)
////
////}
//var names:[String] = []
//for json in jsonArray{
//    let name = json["name"] as? String ?? ""
//    let age = json["age"] as? Int ?? 0
//    if age >= 30{
//        names.append(name)
//    }
//}
//print(names)
//
////struct PersonalData {
////
////    var age: Int = 0
////    var name: String = ""
////    var sex: String = ""
////    var addr: AddrData = .init(city: "", area: "")
////
////    init (
////        json: [String: Any]
////    ) {
////        self.age = json["age"] as? Int ?? 0
////        self.name = json["name"] as? String ?? "0"
////        self.sex = json["sex"] as? String ?? "0"
////        self.addr =  AddrData(json: json["addr"] as? [String : Any] ?? [:])
////    }
////}
////
////struct AddrData {
////
////    var city: String = ""
////    var area: String = ""
////
////    init(
////        json: [String: Any]
////    ) {
////        self.city = json["city"] as? String ?? ""
////        self.area = json["area"] as? String ?? ""
////    }
////
////    init(
////        city: String,
////        area: String
////    ) {
////        self.city = city
////        self.area = area
////    }
////
////}
////
////
////let datas = json.map({PersonalData(json: $0)})
//


