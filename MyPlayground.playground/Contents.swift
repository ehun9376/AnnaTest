//import UIKit

let testJson: [String: Any] = [
    "name": "John",
    "age": 19.5,
    "isAdult": true
]

let sex = testJson["age"] as? Int
let isAdult: Bool = testJson["isAdult"] as? Bool ?? true

import Foundation
////“:”是指型態，所以這段代表isAdult是一個布林值．
//// as? Bool是指將找的 = testJson["isAdult"] 轉型成一個Optional的布林值
//// ?? true 如果"as? Bool"轉型失敗則給預設值true


let name = testJson["name"]



let jsonArray: [[String: Any]] = [
    [
        "age": 18,
        "name": 1,
        "sex": "F",
        "addr": [
            "city": "台北市",
            "area": "信義區"
        ]
    ],
    [
        "age": 21,
        "name": "John",
        "sex": "M",
        "addr": [
            "city": "台北市",
            "area": "中山區"
        ]
    ],
    [
        "age": 79,
        "name": "Jacky",
        "sex": "F",
        "addr": [
            "city": "新北市",
            "area": "林口區"
        ]
    ],
    [
        "age": 50,
        "name": "Johnson",
        "sex": "M",
        "addr": [
            "city": "台北市",
            "area": "信義區"
        ]
    ],
    [
        "age": 25,
        "name": "Tina",
        "sex": "F",
        "addr": [
            "city": "桃園市",
            "area": "八德區"
        ]
    ],
    [
        "age": 22,
        "name": "Sandra",
        "sex": "F",
        "addr": [
            "city": "高雄市",
            "area": "前鎮區"
        ]
    ],
    [
        "age": 30,
        "name": "ChiChi",
        "sex": "M",
        "addr": [
            "city": "新北市",
            "area": "新店區"
        ]
    ],
    [
        "age": 18,
        "name": "Tee",
        "sex": "F",
        "addr": [
            "city": "台北市",
            "area": "信義區"
        ]
    ],
    [
        "age": 25,
        "name": "Lee",
        "sex": "F",
        "addr": [
            "city": "桃園市",
            "area": "桃園區"
        ]
    ],
    [
        "age": 13,
        "name": "Chen",
        "sex": "F",
        "addr": [
            "city": "桃園市",
            "area": "桃園區"
        ]
    ],
    [
        "age": 15,
        "name": "Lala",
        "sex": "F",
        "addr": [
            "city": "台北市",
            "area": "文山區"
        ]
    ]
]

//jsonArray

//for json in jsonArray {
//    let name = json["name"] as? String ?? ""
//    // ?? "" 如果沒有成功轉型成字串那就給他一個“”空字串
//
//    let age = json["age"] as? Int ?? 0
//    print(name,age)
//
//}




//class struct
struct PersonalData {
//    [
//        "age": 15,
//        "name": "Lala",
//        "sex": "F",
//        "addr": [
//            "city": "台北市",
//            "area": "文山區"
//        ]
//    ]
    
    var age: Int = 0
    var name: String = ""
    var sex: String = ""
    var addr: Addrdata = .init(city: "", area: "")
    
    //這裡初始化時是用一般丟 String / Int 的方式
    init(
        age: Int,
        name: String,
        sex: String,
        addr: Addrdata
    ) {
        self.age = age
        self.name = name
        self.sex = sex
        self.addr = addr
    }
//init代表初始化
    
    //這裡初始化時是用[String: Any]
    init(
        json: [String: Any]
    ) {
        self.age = json["age"] as? Int ?? 0
        self.name = json["name"] as? String ?? ""
        self.sex = json["sex"] as? String ?? ""
        self.addr = Addrdata(json: json["addr"] as? [String:Any] ?? [:])
    }
    
//        [
//            "age": 15,
//            "name": "Lala",
//            "sex": "F",
//            "addr": [
//                "city": "台北市",
//                "area": "文山區"
//            ]
//        ]
        
}

struct Addrdata {
    
    var city: String = ""
    
    var area: String = ""
    
    //[
    //   "city": "台北市",
    //    "area": "文山區"
    //]
    init(
        json:[String: Any]
    ){
        self.city = json["city"] as? String ?? ""
        self.area = json["area"] as? String ?? ""
    }
    
    //這裡初始化時是用一般丟 String/ Int 的方式
    init(
        city:String,
        area:String
    ){
        self.city = city
        self.area = area
    }
    

}

var datas1: [PersonalData] = []

//物件初始化的方式是一般丟 String/Int... 的方式
for json in jsonArray {
    
    let age: Int = json["age"] as? Int ?? 0
    let name: String = json["name"] as? String ?? ""
    let sex: String = json["sex"] as? String ?? ""
    let city: String = (json["addr"] as? [String: Any] ?? [:])["city"] as? String ?? ""
    let area: String = (json["addr"] as? [String:Any] ?? [:])["area"] as? String ?? ""
    
    let addr: Addrdata = Addrdata(city: city, area: area)
    
    
    let data: PersonalData = .init(age: age, name: name, sex: sex, addr: addr)
    
    datas1.append(data)
    
    
}

//print(datas1)

var datas2: [PersonalData] = []

for json in jsonArray {
    let data = PersonalData.init(json: json)
    datas2.append(data)
}

//print(datas2)

var onlyTaipeiData: [PersonalData] = []

for data in datas2 {
    if data.addr.city == "台北市"{
        onlyTaipeiData.append(data)

    }
    
}
//print(onlyTaipeiData)

var onlySexMData:[PersonalData] = []

for data in datas2 {
    if data.sex == "M"{
        onlySexMData.append(data)
    }
}
//print(onlySexMData)



let jobJsonArray: [[String: Any]] = [
    [
        "jobName": "清潔工",
        "city": "台北市",
        "salary": [
            "type": "d",
            "max": 2000,
            "min": 1000
        ]
    ],
    [
        "jobName": "軟體工程師",
        "city": "新北市",
        "salary": [
            "type": "m",
            "max": 40000,
            "min": 30000
        ]
    ],
    [
        "jobName": "iOS工程師",
        "city": "新北市",
        "salary": [
            "type": "y",
            "max": 1000000,
            "min": 700000
        ]
    ],
    [
        "jobName": "高階主管",
        "city": "台北市",
        "salary": [
            "type": "m",
            "max": 50000,
            "min": 40000
        ]
    ],
    [
        "jobName": "高階軟體工程師",
        "city": "新北市",
        "salary": [
            "type": "m",
            "max": 200000,
            "min": 100000
        ]
    ],
    [
        "jobName": "低級軟體工程師",
        "city": "新北市",
        "salary": [
            "type": "m",
            "max": 9000,
            "min": 3000
        ]
    ],
    [
        "jobName": "水電工",
        "city": "高雄市",
        "salary": [
            "type": "d",
            "max": 1500,
            "min": 1000
        ]
    ],
    [
        "jobName": "板模工",
        "city": "屏東市",
        "salary": [
            "type": "m",
            "max": 45000,
            "min": 35000
        ]
    ],
    [
        "jobName": "板模師傅",
        "city": "宜蘭市",
        "salary": [
            "type": "y",
            "max": 3000000,
            "min": 1000000
        ]
    ],
    [
        "jobName": "電腦硬體工程師",
        "city": "新北市",
        "salary": [
            "type": "m",
            "max": 35000,
            "min": 30000
        ]
    ],
]
//jobName工作名稱,city: 地區, salary: 薪資 type: 薪資類型 (d:日薪, m:月薪, y: 年薪) max: 薪資上限 min: 薪資下限
//任務1: 獲得一個全部資料的 struct陣列
//任務2: 篩選出薪水是以月薪計算，且上限高於25260的工作列表
struct Jobdata {
    var jobName: String = ""
    var city: String = ""
    var salary: Salarydata = Salarydata(json: [:])
    
    init(
        json:[String:Any]
    ){
        self.city = json["city"] as? String ?? ""
        self.jobName = json["jobName"] as? String ?? ""
        self.salary = Salarydata(json: json["salary"] as? [String:Any] ?? [:])
    }
    
}

struct Salarydata{
    var type:String = ""
    var max:Int = 0
    var min:Int = 0
    
    init(
        json:[String:Any]
    ){
        self.type = json["type"] as? String ?? ""
        self.max = json["max"] as? Int ?? 0
        self.min = json["min"] as? Int ?? 0
    }
}

var jobDataArray:[Jobdata] = []

for json in jobJsonArray{
    let data = Jobdata.init(json: json)
//    datas.append(data)
    if data.salary.type == "m" && data.salary.max >= 25260 {
        jobDataArray.append(data)
    }
    
}
print(jobDataArray)

