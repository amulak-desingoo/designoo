// import 'dart:convert';
// import 'package:designoo/Models/LeadsModel.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class ExampleThree extends StatefulWidget {
//   const ExampleThree({Key? key}) : super(key: key);
//
//   @override
//   _ExampleThreeState createState() => _ExampleThreeState();
// }
//
// class _ExampleThreeState extends State<ExampleThree> {
//
//   List<LeadsModel> userList = [] ;
//
//   Future<List<LeadsModel>> getLeadsApi ()async{
//     final response =await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/kenpf4my1m48ere0/crm.lead.list'));
//     var data = jsonDecode(response.body);
//     if(response.statusCode == 200){
//       for(Map i in data){
//         print(i['name']);
//
//         userList.add(LeadsModel.fromJson(i));
//       }
//       return userList;
//     }else {
//       return userList;
//
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('leads'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//               future: getLeadsApi() ,
//               builder: (context ,AsyncSnapshot<List<LeadsModel>> snapshot){
//
//                 if(!snapshot.hasData){
//                   return CircularProgressIndicator();
//                 }else{
//                   return ListView.builder(
//                       itemCount: snapshot.data.
//                       itemBuilder: (context , index){
//                         return Card(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               children: [
//                                 //ReusbaleRow(title: 'Name', value: snapshot.data!.toString()),
//                                 //ReusbaleRow(title: 'username', value: snapshot.data![index].title.toString()),
//                               ],
//                             ),
//                           ),
//                         );
//                       });
//                 }
//
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
// }
// //
// // class ReusbaleRow extends StatelessWidget {
// //   String title , value ;
// //   ReusbaleRow({Key? key , required this.title , required this.value}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(8.0),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Text(title),
// //           Text(value ),
// //
// //         ],
// //       ),
// //     );
// //   }
// // }