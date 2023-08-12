// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Order Status App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: OrderPage(),
//     );
//   }
// }

// class OrderPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Status'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () {
//                 _showSnackBar(context);
//               },
//               child: Text('Show SnackBar'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _showAlertDialog(context);
//               },
//               child: Text('Show AlertDialog'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _showSnackBar(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Đơn hàng đã được xác nhận.'),
//         duration: Duration(seconds: 3),
//       ),
//     );
//   }

//   void _showAlertDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Trạng thái đơn hàng'),
//           content: Text('Đơn hàng đã được xác nhận.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Đóng'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
