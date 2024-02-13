// ignore_for_file: file_names

import 'dart:io';

import 'mockAPI_model.dart';
import 'network_API.dart';

String baseUlr = "65c4be6adae2304e92e33e36.mockapi.io";

void main(List<String> args) async {
  NetworkService.getData(NetworkService.shoppingUrl);

  MockApi mockApi = MockApi(
    createdAt: "created nimadir",
    name: "Asliddin",
    avatar: "avatar nimadir",
    productName: "bread",
    cost: '2800',
    color: "yellow",
    id: 'id',
  );

  /// GetData

  String? str2 = await NetworkService.getData(NetworkService.shoppingUrl);
  if (str2 != null) {
    print("Data Get");
  }

  print("Tanlang:");
  print("1:PostData<<<\n2:DeleteData<<<\n3:UpdeteData<<<\n");

  stdout.write("Raqam kiriting");
  String? std = stdin.readLineSync();

  if (std == '1') {
    stdout.write("createdAt:");
    String? createdAt = stdin.readLineSync();

    stdout.write("name:");
    String? name = stdin.readLineSync();

    stdout.write("avatar:");
    String? avatar = stdin.readLineSync();

    stdout.write("productName:");
    String? productName = stdin.readLineSync();

    stdout.write("cost:");
    String? cost = stdin.readLineSync();

    stdout.write("color:");
    String? color = stdin.readLineSync();

    stdout.write("id:");
    String? id = stdin.readLineSync();

    stdout.write("product_name");
    String? product_name = stdin.readLineSync();

    MockApi mockApi = MockApi(
      createdAt: "$createdAt",
      name: '$name',
      avatar: '$avatar',
      productName: '$productName',
      cost: "$cost",
      color: '$color',
      id: '$id',
    );
  }

  /// PostData

  String? str = await NetworkService.postData(
      NetworkService.shoppingUrl, mockApi.toJson());
  if (str != null) {
    print("Data Saved");
  }

  /// DeleteData

  String id = "5";

  String? str1 =
      await NetworkService.deleteData(NetworkService.shoppingUrl, id);
  if (str1 != null) {
    print("Data Delete");
  }

  /// UpdateData

  String id2 = "3";

  String? str3 =
      await NetworkService.updateData(NetworkService.shoppingUrl, id2, {
    "productName": "bread",
    "cost": '2800',
    "color": "green",
  });
  if (str3 != null) {
    print("Data update $str3");
  }
}
