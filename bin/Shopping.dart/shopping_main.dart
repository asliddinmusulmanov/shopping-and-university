
// import 'University.dart/network_shopping.dart';
// import 'shopping_model.dart';

// String baseUlr = '655deeb89f1e1093c59a2ed1.mockapi.io';

// void main() async {
//   NetworkService.getData(NetworkService.baseUrl, api: '/shopping');

//   Shopping shopping = Shopping(
//     productName: "Coffee",
//     cost: 5000,
//     category: "Nimadir",
//     details: Details(
//         color: "Black",
//         weight: 100,
//         deminsions: Deminsions(length: 20, width: 30, height: 200)),
//     type: Type(
//       name: "Jocabs",
//       comment: "GOOD",
//       count: ['1, 2, 3, 4'],
//       id: 'id',
//     ),
//   );

//   String? str = await NetworkService.postData(
//     NetworkService.shoppingUrl, shopping.toJson()
//   );
//   if (str != null) {
//     print("Data Saved");
//   }
// }
