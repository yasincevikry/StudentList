import UIKit

class People {
    var name : String?
    var age : Int?
    var address : Address?
    
    init(name : String, age : Int, address : Address) {
        self.name = name
        self.age = age
        self.address = address
    }
}
class Address{
    var city : String?
    var district : String?
    
    init(city : String,district : String) {
        self.city = city
        self.district = district
    }
}

let address = Address(city: "Samsun", district: "Yakakent")

let person = People(name: "Yasin", age: 22, address: address)

print("Person Name : \(person.name!)")
print("Person Age : \(person.age!)")
print("Person City : \(person.address!.city!)")
print("Person District : \(person.address!.district!)")




class Categories {
    var category_id : Int?
    var category_name : String?
    
    init(category_id : Int, category_name : String) {
        self.category_id = category_id
        self.category_name = category_name
    }
}

class Directors {
    var director_id : Int?
    var director_name : String?
    
    init(director_id : Int, director_name : String) {
        self.director_id = director_id
        self.director_name = director_name
    }
}

class Movies{
    var movie_id : Int?
    var movie_name : String?
    var movie_year : Int?
    var category : Categories?
    var director : Directors?
    
    init(movied_id : Int, movie_name : String, movie_year : Int, category : Categories, director : Directors) {
        self.movie_id = movied_id
        self.movie_name = movie_name
        self.movie_year = movie_year
        self.category = category
        self.director = director
    }
}

var c1 = Categories(category_id: 1, category_name: "Drama")
var c2 = Categories(category_id: 2, category_name: "Comedy")
var c3 = Categories(category_id: 3, category_name: "Science Fiction")

var d1 = Directors(director_id: 1, director_name: "Nuri Bilge Ceylan")
var d2 = Directors(director_id: 2, director_name: "Quantin Tarantino")
var d3 = Directors(director_id: 3, director_name: "Christopher Nolan")

var m1 = Movies(movied_id: 1, movie_name: "Django", movie_year: 2013, category: c1, director: d2)
var m2 = Movies(movied_id: 2, movie_name: "Inception", movie_year: 2006, category: c3, director: d3)

print("Movie Id       : \(m1.movie_id!)")
print("Movie Name     :\(m1.movie_name!)")
print("Movie Year     :\(m1.movie_year!)")
print("Movie Category :\(m1.category!.category_name!)")
print("Movie Director :\(m1.director!.director_name!)")


