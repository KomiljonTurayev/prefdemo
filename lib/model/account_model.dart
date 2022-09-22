class Account {
  String id;
  String name;
  String email;
  String phone;
  String password;
  String confirmpas;

  Account({this.id, this.name,this.email, this.phone, this.password, this.confirmpas});

  Account.from({this.name,this.email, this.phone, this.password, this.confirmpas});

  Account.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        phone = json['phone'],
        password = json['password'],
        confirmpas = json['confirmpas'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'phone': phone,
        'password': password,
        'confirmpas': confirmpas,
      };
}
