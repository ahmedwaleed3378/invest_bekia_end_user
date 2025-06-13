class ForgetPasswordModel {
  bool? success;
  Data? data;
  String? message;

  ForgetPasswordModel({this.success, this.data, this.message});

  ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}

class Data {
  Customer? customer;

  Data({this.customer});

  Data.fromJson(Map<String, dynamic> json) {
    customer = json['customer'] != null
        ? Customer.fromJson(json['customer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    return data;
  }
}

class Customer {
  int? id;
  String? image;
  String? name;
  String? userName;
  String? email;
  String? phone;
  String? otp;

  Customer(
      {this.id,
        this.image,
        this.name,
        this.userName,
        this.email,
        this.phone,
        this.otp});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    userName = json['user_name'];
    email = json['email'];
    phone = json['phone'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['user_name'] = userName;
    data['email'] = email;
    data['phone'] = phone;
    data['otp'] = otp;
    return data;
  }
}
