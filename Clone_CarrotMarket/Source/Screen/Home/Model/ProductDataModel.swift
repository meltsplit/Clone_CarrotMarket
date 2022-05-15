import UIKit

struct ProductDataModel {
    let productImage: UIImage
    let title: String
    
    let address: String
    let passedTime: Int
    
    let price: Int
    
    let chatCount: Int
    let heartCount: Int
    
    //MARK: - Sample Data
    
    static let sampleData: [ProductDataModel] = [
        ProductDataModel(productImage: Image.ptry, title: "포터리 울 스포츠 자켓", address: "합정역", passedTime: 3, price: 370000, chatCount: 2, heartCount: 1),
        ProductDataModel(productImage: Image.dgre, title: "디그레 소호 테이퍼드 팬츠", address: "압구정", passedTime: 10, price: 110000, chatCount: 2, heartCount: 3),
        ProductDataModel(productImage: Image.airpod, title: "에어팟 맥스 화이트", address: "가로수길", passedTime: 10, price: 550000, chatCount: 10, heartCount: 3),
        ProductDataModel(productImage: Image.ddq, title: "딥디크 도손 75ml", address: "죽전", passedTime: 7, price: 99000, chatCount: 0, heartCount: 0),
        ProductDataModel(productImage: Image.ptry, title: "포터리 울 스포츠 자켓", address: "합정역", passedTime: 3, price: 370000, chatCount: 2, heartCount: 1),
        ProductDataModel(productImage: Image.dgre, title: "디그레 소호 테이퍼드 팬츠", address: "압구정", passedTime: 10, price: 110000, chatCount: 2, heartCount: 3),
        ProductDataModel(productImage: Image.airpod, title: "에어팟 맥스 화이트", address: "가로수길", passedTime: 10, price: 550000, chatCount: 10, heartCount: 3),
        ProductDataModel(productImage: Image.ddq, title: "딥디크 도손 75ml", address: "죽전", passedTime: 7, price: 99000, chatCount: 0, heartCount: 0)
        ]
}


