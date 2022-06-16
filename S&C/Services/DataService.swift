import Foundation

class DataService {
    static let instance = DataService() // static to make it refering to exact same object in the memory
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    private let hoodies = [
        Product(title: "Devslopes Logo Beanie", price: "$ 18", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Gray", price: "$ 22", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Dark-Red", price: "$ 24", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Black", price: "$ 32", imageName: "hoodie04.png"),
        Product(title: "Devslopes Logo Blackish" , price: "$ 12", imageName: "hoodie05.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Beanie", price: "$ 18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Gray", price: "$ 22", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Dark-Red", price: "$ 24", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Black", price: "$ 32", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Blackish" , price: "$ 12", imageName: "shirt05.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Beanie", price: "$ 18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Gray", price: "$ 22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Dark-Red", price: "$ 24", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Black", price: "$ 32", imageName: "hat04.png"),
        Product(title: "Devslopes Logo Blackish" , price: "$ 12", imageName: "hat05.png")
    ]
    
    private let digitalGoods = [Product]() // you have to declear a type to aviod craching
    
    func getCategory() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "Hoodies":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
