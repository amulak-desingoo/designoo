import 'dart:convert';
import 'package:designoo/about.dart';
import 'package:designoo/login.dart';
import 'package:designoo/onGoing.dart';
import 'package:designoo/search.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:designoo/main.dart';
import 'package:designoo/sales.dart';
import 'Client/login.dart';
import 'package:dio/dio.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => Home();
}

class Home extends State<HomePage> {
  var list = [];
  var search = [];

  Future getLeads() async{
    final response = await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/kenpf4my1m48ere0/crm.company.list'));
    try{
      final extractedData = json.decode(response.body) as Map<String,dynamic>;
      final List<dynamic> loadedLeads = extractedData['result'];
      list = loadedLeads;
      print(list);
    }catch(error){
      throw(error);
    }
  }

  
// var foundLeads = list;
//   void searchLead(String value){
//     setState(() {
//       foundLeads = list.where((element) => element.list['TITLE']!.toLowerCase().contains(value.toLowerCase())).toList();
//     });
//   }
  static int page = 0;
  ScrollController _sc = new ScrollController();
  bool isLoading = false;
  List users = [];
  final dio = new Dio();

  @override
  void initState() {
    this._getMoreData(page);
    super.initState();

    _sc.addListener(() {
      if (_sc.position.pixels ==  _sc.position.maxScrollExtent) {
        page = page + 49;
        _getMoreData(page);
      }else{
      }
    });
  }


  @override
  void dispose() {
    _sc.dispose();
    super.dispose();
  }
  void _getMoreData(int index) async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      var url = "https://designoo.bitrix24.in/rest/269/ggg93cm0618ofpzj/crm.company.list?limit=50&start="+ index.toString();
     // print(url);
      final response = await dio.get(url);
      List tList = [];
      for (int i = 0; i < response.data['result'].length; i++)
      {
        tList.add(response.data['result'][i]);
        //print(tList.length);
        //print(tList);
      }

      setState(() {
        isLoading = false;
        users.addAll(tList);
        page++;
      });
    }
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Opacity(
          opacity: isLoading ? 1.0 : 00,
          child: new CircularProgressIndicator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset( 'images/logo.png',width: 60,height: 60,),
                    ),
                    Align(
                      alignment: Alignment.center+ Alignment(0, .5),
                      child: Text( 'User Name',  style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center + Alignment(0, .9),
                      child: Text( 'User ID', style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),

            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(title: '',), ),);
                  },
                  label: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.home,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => About()),);
                  },
                  label: const Text('About',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.question_mark_rounded,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    showDialog(
                        context: context, builder: (context){
                      return Center(
                        child: Column(
                          children: [
                            Container(
                              child: AlertDialog(
                                title: Text('Are you sure you want to log out of designoo?'),
                                actions: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
                                          }, child: Text('Yes',style: TextStyle(color: Colors.white), ),
                                          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                                        ),
                                        ElevatedButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: Text('No',style: TextStyle(color: Colors.white),),
                                          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),)
                                      ],),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
                  },
                  label: const Text('Log Out',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.logout,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    showDialog(
                        context: context, builder: (context){
                      return Center(
                        child: Column(
                          children: [
                            Container(
                              child: AlertDialog(
                                title: Text('Are you sure you want to delete your account?'),
                                actions: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
                                          }, child: Text('Yes',style: TextStyle(color: Colors.white), ),
                                          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                                        ),
                                        ElevatedButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: Text('No',style: TextStyle(color: Colors.white),),
                                          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),)
                                      ],),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
                  },
                  label: const Text('Delete Account',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.delete_forever_sharp,color: Colors.black,),),
                Padding(
                  padding: const EdgeInsets.only(top: 340,left: 20),
                  child: OutlinedButton.icon(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyClient(), ),);
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    label: const Text('Switch to Client Mode',style: TextStyle(color: Colors.black,fontSize: 20),),
                    icon: const Icon(Icons.person,color: Colors.black,),),
                ),
                //TextButton(onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Sales(title: '',), ),);
                //}, child: Text('Sales',style: TextStyle(color: Colors.black,fontSize: 20), textAlign: TextAlign.justify,)),
              ],
            ),
        ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              //onChanged: (value) => searchLead(value),
              //controller: _textEditingController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Deals',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.black),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Dataleads()));
                    },
                    label: const Text('Add Client'),
                    icon: const Icon(Icons.manage_accounts),),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 1),
                    ),
                    onPressed: (){},
                    label: const Text('Sync Details',style: TextStyle(color: Colors.black),),
                    icon: const Icon(Icons.sync,color: Colors.black,),),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: users.length + 1 ,
                padding: EdgeInsets.symmetric(vertical: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  if (index == users.length) {
                    return _buildProgressIndicator();
                  } else{
                    return Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7),
                                child: Text((users[index]['TITLE'])),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7),
                                child: Text((users[index]['ID'])),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10,bottom: 7),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => OnGoing(title: '')));
                                      },
                                      label: const Text('View Details'),
                                      icon: const Icon(Icons.remove_red_eye_sharp),),
                                    OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(color: Colors.black,width: 1),
                                      ),
                                      onPressed: (){},
                                      label: const Text('Call Now',style: TextStyle(color: Colors.black),),
                                      icon: const Icon(Icons.phone,color: Colors.black,),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                },
                controller: _sc,
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,

      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add New Leads', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.chat),
    ),
    );
   }
}



