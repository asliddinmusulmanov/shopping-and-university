class Shopping {
  late String productName;
  late int cost;
  late String category;
  late Details details;
  late Type type;

  Shopping({
    required this.productName,
    required this.cost,
    required this.category,
    required this.details,
    required this.type,
  });

  Shopping.fromJson(Map<String, dynamic> json){
    productName = json['productName'];
    cost = json['cost'];
    category = json['category'];
    details = Details.fromJson(json['details']);
    type = Type.fromJson(json['type']);
  }

  Map<String, dynamic> toJson() {
    return {
      'productName': productName,
      'cost': cost,
      'category': category,
      'details': details.toJson(),
      'type': type.toJson(),
    };
  }
}

class Details {
  late String color;
  late int weight;
  late Deminsions deminsions;

  Details({
    required this.color,
    required this.weight,
    required this.deminsions,
  });

  Details.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    weight = json['weight'];
    deminsions = Deminsions.fromJson(json['deminsions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'weight': weight,
      'deminsions': deminsions.toJson(),
    };
  }
}

class Deminsions {
  late int length;
  late int width;
  late int height;

  Deminsions({
    required this.length,
    required this.width,
    required this.height,
  });

  Deminsions.fromJson(Map<String, dynamic> json) {
    length = json['length'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    return {
      'length': length,
      'width': width,
      'height': height,
    };
  }
}

class Type {
  late String name;
  late String comment;
  late List<String> count;
  late String id;

  Type({
    required this.name,
    required this.comment,
    required this.count,
    required this.id,
  });

  Type.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    comment = json['comment'];
    count = List<String>.from(json['count'].map((e) => e.toString()));
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'comment': comment,
      'count': List<String>.from(count.map((e) => e.toString())),
      'id': id,
    };
  }
}
