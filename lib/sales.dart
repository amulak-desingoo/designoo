import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'onGoing.dart';

class Dataleads extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeState();
}
class HomeState extends State<Dataleads> {
  //final _firebaseDB = FirebaseFirestore.instance.collection('Deals').snapshots();
  //DatabaseReference dbRef = FirebaseDatabase.instance.ref();
  List _displayText = [];
  final _database = FirebaseDatabase.instance.ref();
  final firestoreInstance = FirebaseFirestore.instance;

  @override
  void initState() {
    //_activateListeners();
    getDeal();
    super.initState();
  }

  void getDeal(){
    firestoreInstance.collection("Deals").get().then((value) => {
      value.docs.forEach((Deals) {
        print(Deals.data());
      })
    });
  }

  @override
  Widget build(BuildContext context) {
    //final dealsRef = database.child('Deals/');
    return Scaffold(
      appBar: AppBar(
        title: Text("Deal"),
      ),
      body: Center(child: ElevatedButton(onPressed: getDeal,child: Text('click'),)),
    );
  }
}












// -- deals = findAllDeals
// (
// )
//
// -- for
// (
// d : deals){
// -- if ( d.getCompanyId() != null){
// -- company = findCompanyNAmeAndCOntactNumberById(d.getCompanyId());
// --
// -- }
// -- }


//===========================================================================

// class Dataleads extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => new HomeState();
// }
//
// class HomeState extends State<Dataleads> {
//   static int page = 0;
//   ScrollController _sc = new ScrollController();
//   bool isLoading = false;
//   List users = [];
//   final dio = new Dio();
//
//   @override
//   void initState() {
//     this._getMoreData(page);
//     super.initState();
//
//     _sc.addListener(() {
//       if (_sc.position.pixels ==  _sc.position.maxScrollExtent) {
//         page = page + 49;
//         _getMoreData(page);
//       }else{
//
//       }
//     });
//   }
//
//
//   @override
//   void dispose() {
//     _sc.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("deals List"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: users.length + 1 ,
//                   padding: EdgeInsets.symmetric(vertical: 8.0),
//                   itemBuilder: (BuildContext context, int index) {
//                     if (index == users.length) {
//                       return _buildProgressIndicator();
//                     } else{
//                       return Column(
//                         children: [
//                               Text((users[index]['TITLE']),style: TextStyle(fontSize: 15),),
//                               //Text((users[index]['ID'])),
//                             ],
//                       );
//                     }
//                   },
//                   controller: _sc,
//                 ),
//               ),
//             ],
//           ),
//       ),
//       resizeToAvoidBottomInset: false,
//     );
//   }
//
//
//   void _getMoreData(int index) async {
//     if (!isLoading) {
//       setState(() {
//         isLoading = true;
//       });
//       var url = "https://designoo.bitrix24.in/rest/269/ggg93cm0618ofpzj/crm.company.list?limit=50&start="+ index.toString();
//       //print(url);
//       final response = await dio.get(url);
//       List tList = [];
//
//       for (int i = 0; i < response.data['result'].length; i++)
//       {
//         tList.add(response.data['result'][i]);
//         if(response.data['result'] == response.data['result']['deal']){
//           List reqs = [];
//           reqs.add(response.data['result']['deal']);
//           print(reqs);
//         }
//           //print(tList.length);
//         //print(tList);
//       }
//
//       setState(() {
//         isLoading = false;
//         users.addAll(tList);
//         page++;
//       });
//     }
//   }
//
//   Widget _buildProgressIndicator() {
//     return new Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: new Center(
//         child: new Opacity(
//           opacity: isLoading ? 1.0 : 00,
//           child: new CircularProgressIndicator(),
//         ),
//       ),
//     );
//   }
//
// }


//============================================================================

// class Dataleads extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => new HomeState();
// }
// class HomeState extends State<Dataleads> {
//   List<dynamic> list = [];
//   final dio = new Dio();
//   var ID;
//   Future<dynamic> getDeal() async {
//     //print(ref);
//     // List<dynamic> list123 = [];
//     //   final response  = await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/ggg93cm0618ofpzj/crm.deal.list'));
//     //   if (response.statusCode == 200) {
//     //     final extractedData = json.decode(response.body) as Map<String,dynamic>;
//     //     final List<dynamic> loadedLeads = extractedData['result'];
//     //     if(loadedLeads.contains("company_id")){
//     //       List data = [];
//     //       data.addAll(loadedLeads);
//     //       list = data;
//
//
//     final response  = await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/ggg93cm0618ofpzj/crm.deal.list'));
//     if (response.statusCode == 200) {
//       final extractedData = json.decode(response.body) as Map<String,dynamic>;
//       final List<dynamic> loadedLeads = extractedData['result'];
//       for(int i = 0; i<loadedLeads.length;i++){
//         if(!loadedLeads.contains("COMPANY_ID"));
//       }
//         //print(loadedLeads);
//         //print(loadedLeads.contains('company_id'));
//         //return list;
//         // setState(() {
//         //   list = extractedData['result'];
//         //   print(list);
//         // });
//       } else {
//         throw Exception('Error getting Deal');
//       }
//     }
//
//   static const url = "https://designoo.bitrix24.in/rest/269/ggg93cm0618ofpzj";
//
//   // Future<dynamic> getDeals(ID) async {
//   //   String ID = 9115 as String;
//   //   http.Response response  = await http.get(Uri.parse(url +"/crm.deal.get?"+ID));
//   //   if (response.statusCode == 200) {
//   //     final jsonData = json.decode(response.body);
//   //     final deals = <Deal>[];
//   //     for (var item in jsonData){
//   //       final deal = Result(
//   //         id: item['ID'],
//   //         title: item['TITLE'],
//   //       );
//   //       deals.add(deal as Deal);
//   //       print(response.body);
//   //     }
//   //   } else {
//   //     throw Exception('Error getting Deal');
//   //   }
//   // }
//
//   @override
//   void initState() {
//     super.initState();
//      getDeal();
//     //getDeals(ID);
//   }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: Text("Deal"),
//       ),
//       body: FutureBuilder(
//           future: getDeal(),
//           builder: (context, AsyncSnapshot snapshot) {
//                 if (snapshot.hasError) {
//                   return Text('${snapshot.error}');
//                 } else {
//                   return ListView.builder(
//                       itemCount: list.length,
//                       itemBuilder: (context, index) {
//                         return Column(
//                           children: [
//                             Text(list[index]["COMPANY_ID"] ?? 'null'),
//                             // Text("Data link: ${list[index]['UF_CRM_1635792029186']}"),
//                             // Text( "no of picture: ${list[index]['UF_CRM_1635684949415']}"),
//                             // Text( "avrage per sheet ${list[index]['UF_CRM_1635685157971']}"),
//                             // Text("DPI: ${list[index]['UF_CRM_1635685172191']}"),
//                             // Text("sheet sixe: ${list[index]['UF_CRM_1635684817090']}"),
//                             // Text( "LQ version 1: ${list[index]['UF_CRM_1648877910715"']}"),
//                           ],
//                         );
//                       });
//                 }
//             }
//       )
//   );
// }
// }

// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
//
// import 'onGoing.dart';

// class Dataleads extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => new HomeState();
// }
//
// class HomeState extends State<Dataleads> {
//   List<dynamic> list = [];
//   List <dynamic> company = [];
//   ScrollController scrollController = ScrollController();
//   bool loading = true;
//   int start = 0;
//   int ID = 0;

  // Future fetchDealsDataByPageNumber(int page) async {
  //   print(start);
  //   if (!loading) {
  //     setState(() {
  //       loading = true;
  //     });
  //   }
  //   var response = await http.get(Uri.parse(
  //       "https://designoo.bitrix24.in/rest/269/ggg93cm0618ofpzj/crm.deal.list?limit=50&start=${start}"));
  //   if (response.statusCode == 200) {
  //     var extractedData = json.decode(response.body) as Map<String, dynamic>;
  //     List<dynamic> loadedLeads = extractedData['result'];
  //     setState(() {
  //       list = loadedLeads;
  //       loading = false;
  //       start = start + 50;
  //     });
  //
  //     //setStateToFalse(loadedLeads);
  //     //print(list);
  //   }
  // }

/*  Future fetchCompanyBy() async {
    var url = "https://designoo.bitrix24.in/rest/269/ggg93cm0618ofpzj/crm.company";
    if (!loading) {
      setState(() {
        loading = true;
      });
    }
    var response = await http.get(Uri.parse(url +".list"));
    if (response.statusCode == 200) {
      var extractedData = json.decode(response.body) as Map<String, dynamic>;
        List<dynamic> loadedLeads = extractedData['result'];
        company = loadedLeads;
      //setStateToFalse(loadedLeads);
      var response1 = await http.get(Uri.parse(url +".get?id=$ID"));
      if (response1.statusCode == 200) {
        var extractedData1 = json.decode(response1.body) as Map<String, dynamic>;
        List<dynamic> loadedLeads1 = extractedData1['result'];
        setState(() {
          ID = ID + 1;
          company.add(loadedLeads1);
        });
      print(company);
    }
  }*/


//   @override
//   void initState() {
//     super.initState();
//     //fetchDealsDataByPageNumber(start);
//     //fetchCompanyBy();
//     handleNext();
//   }
//
//   void handleNext() {
//     scrollController.addListener(() async {
//       if (scrollController.position.maxScrollExtent ==
//           scrollController.position.pixels) {
//         //fetchDealsDataByPageNumber(start);
//         fetchCompanyBy();
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Deal"),
//         ),
//         body: FutureBuilder(
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               } else {
//                 return ListView.builder(
//                     controller: scrollController,
//                     itemCount: company.length,
//                     itemBuilder: (context, index) {
//                       if (index == company.length) {
//                         return new Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: new Center(
//                             child: new Opacity(
//                               opacity: loading ? 1.0 : 00,
//                               child: new CircularProgressIndicator(),
//                             ),
//                           ),
//                         );
//                       } else {
//                         return Card(
//                           elevation: 3,
//                           child: Column(
//                             children: [
//                               //Text(company[index]['TITLE']),
//                               Text(company[index]['VALUE']),
//                               Padding(
//                                 padding: EdgeInsets.only(top: 10, bottom: 7),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment
//                                       .spaceEvenly,
//                                   children: [
//                                     ElevatedButton.icon(
//                                       onPressed: () {
//                                         Navigator.push(context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     OnGoing(title: '')));
//                                       },
//                                       label: const Text('View Details'),
//                                       icon: const Icon(
//                                           Icons.remove_red_eye_sharp),),
//                                     OutlinedButton.icon(
//                                       style: OutlinedButton.styleFrom(
//                                         side: BorderSide(
//                                             color: Colors.black, width: 1),
//                                       ),
//                                       onPressed: () {},
//                                       label: const Text('Call Now',
//                                         style: TextStyle(color: Colors.black),),
//                                       icon: const Icon(
//                                         Icons.phone, color: Colors.black,),),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     });
//               }
//             }
//         )
//     );
//   }
// }