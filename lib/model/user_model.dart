class User {
    final int id;
    final String name;
    final String username;
    final String email;

    User({
        required this.id,
        required this.name,
        required this.username,
        required this.email,
    });

    // Factory constructor to create a User from JSON
    factory User.fromJson(Map<String, dynamic> json) {
        return User(
            id: json['id'],
            name: json['name'],
            username: json['username'],
            email: json['email'],
        );
    }
}


// class UserModel {
//     int? id;
//     String? name;
//     String? username;
//     String? email;
//     Address? address;
//     String? phone;
//     String? website;
//     Company? company;
//
//     UserModel(
//         {this.id,
//             this.name,
//             this.username,
//             this.email,
//             this.address,
//             this.phone,
//             this.website,
//             this.company});
//
//     UserModel.fromJson(Map<dynamic, dynamic> json) {
//         id = json['id'];
//         name = json['name'];
//         username = json['username'];
//         email = json['email'];
//         address =
//         json['address'] != null ? new Address.fromJson(json['address']) : null;
//         phone = json['phone'];
//         website = json['website'];
//         company =
//         json['company'] != null ? new Company.fromJson(json['company']) : null;
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['id'] = this.id;
//         data['name'] = this.name;
//         data['username'] = this.username;
//         data['email'] = this.email;
//         if (this.address != null) {
//             data['address'] = this.address!.toJson();
//         }
//         data['phone'] = this.phone;
//         data['website'] = this.website;
//         if (this.company != null) {
//             data['company'] = this.company!.toJson();
//         }
//         return data;
//     }
// }
//
// class Address {
//     String? street;
//     String? suite;
//     String? city;
//     String? zipcode;
//     Geo? geo;
//
//     Address({this.street, this.suite, this.city, this.zipcode, this.geo});
//
//     Address.fromJson(Map<String, dynamic> json) {
//         street = json['street'];
//         suite = json['suite'];
//         city = json['city'];
//         zipcode = json['zipcode'];
//         geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['street'] = this.street;
//         data['suite'] = this.suite;
//         data['city'] = this.city;
//         data['zipcode'] = this.zipcode;
//         if (this.geo != null) {
//             data['geo'] = this.geo!.toJson();
//         }
//         return data;
//     }
// }
//
// class Geo {
//     String? lat;
//     String? lng;
//
//     Geo({this.lat, this.lng});
//
//     Geo.fromJson(Map<String, dynamic> json) {
//         lat = json['lat'];
//         lng = json['lng'];
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['lat'] = this.lat;
//         data['lng'] = this.lng;
//         return data;
//     }
// }
//
// class Company {
//     String? name;
//     String? catchPhrase;
//     String? bs;
//
//     Company({this.name, this.catchPhrase, this.bs});
//
//     Company.fromJson(Map<String, dynamic> json) {
//         name = json['name'];
//         catchPhrase = json['catchPhrase'];
//         bs = json['bs'];
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['name'] = this.name;
//         data['catchPhrase'] = this.catchPhrase;
//         data['bs'] = this.bs;
//         return data;
//     }
// }













// class UserModel {
//     int? page;
//     int? perPage;
//     int? total;
//     int? totalPages;
//     List<Data>? data;
//     Support? support;
//
//     UserModel(
//         {this.page,
//             this.perPage,
//             this.total,
//             this.totalPages,
//             this.data,
//             this.support});
//
//     UserModel.fromJson(Map<String, dynamic> json) {
//         page = json['page'];
//         perPage = json['per_page'];
//         total = json['total'];
//         totalPages = json['total_pages'];
//         if (json['data'] != null) {
//             data = <Data>[];
//             json['data'].forEach((v) {
//                 data!.add(new Data.fromJson(v));
//             });
//         }
//         support =
//         json['support'] != null ? new Support.fromJson(json['support']) : null;
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['page'] = this.page;
//         data['per_page'] = this.perPage;
//         data['total'] = this.total;
//         data['total_pages'] = this.totalPages;
//         if (this.data != null) {
//             data['data'] = this.data!.map((v) => v.toJson()).toList();
//         }
//         if (this.support != null) {
//             data['support'] = this.support!.toJson();
//         }
//         return data;
//     }
// }
//
// class Data {
//     int? id;
//     String? email;
//     String? firstName;
//     String? lastName;
//     String? avatar;
//
//     Data({this.id, this.email, this.firstName, this.lastName, this.avatar});
//
//     Data.fromJson(Map<String, dynamic> json) {
//         id = json['id'];
//         email = json['email'];
//         firstName = json['first_name'];
//         lastName = json['last_name'];
//         avatar = json['avatar'];
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['id'] = this.id;
//         data['email'] = this.email;
//         data['first_name'] = this.firstName;
//         data['last_name'] = this.lastName;
//         data['avatar'] = this.avatar;
//         return data;
//     }
// }
//
// class Support {
//     String? url;
//     String? text;
//
//     Support({this.url, this.text});
//
//     Support.fromJson(Map<String, dynamic> json) {
//         url = json['url'];
//         text = json['text'];
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['url'] = this.url;
//         data['text'] = this.text;
//         return data;
//     }
// }