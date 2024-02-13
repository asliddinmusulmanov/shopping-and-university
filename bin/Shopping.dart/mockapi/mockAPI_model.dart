// ignore_for_file: file_names

class MockApi {
  late String createdAt;
  late String name;
  late String avatar;
  late String productName;
  late String cost;
  late String color;
  late String id;

  MockApi({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.productName,
    required this.cost,
    required this.color,
    required this.id,
  });

  MockApi.fromJson(Map<String, dynamic> json){
    createdAt = json['created_at'];
    name = json['name'];
    avatar = json['avatar'];
    productName = json['product_name'];
    cost = json['cost'];
    color = json['color'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt,
      'name': name,
      'avatar': avatar,
      'product_name': productName,
      'cost': cost,
      'color': color,
      'id': id,
    };
  }
}
