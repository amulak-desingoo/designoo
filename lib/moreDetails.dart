import 'package:designoo/about.dart';
import 'package:designoo/home.dart';
import 'package:designoo/login.dart';
import 'package:designoo/main.dart';
import 'package:designoo/stageDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({super.key, required this.title});
  final String title;

  @override
  State<MoreDetails> createState() => _MoreDetails();
}

class _MoreDetails extends State<MoreDetails>{

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
                    child: Image.asset( 'images/logo.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center+ Alignment(0, .5),
                    child: Text(
                      'User Name',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center + Alignment(0, .9),
                    child: Text( 'User ID',
                      style: TextStyle(fontSize: 14),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(title: ''), ),);
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
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => StageDetails(title: '')));
                        },
                        child: Text('Stage Details',style: TextStyle(color: Colors.black,fontSize: 18),),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => MoreDetails(title: '')));
                        },
                        child: Text('More Details',style: TextStyle(color: Colors.black,fontSize: 18),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Container(
                      height: 600,
                      width: 400,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 2)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Sheet Size:                                  10*20'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('DPI(dot per inch):                         300'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Culling:                                           No'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('No. of Sheets:                               5'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('No. of Pictures:'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Design Type:                                  Any best'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Data Link:                                      https"//www.nisha-\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\taroon-25yrs.yourle\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tnsman.com/'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('LQ file version 1:                        https://digitalshoppe\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t-my.sharepoint.com/:\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tb:/g/personal/varun_dskk_\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcom/EetlsiY6o_ICpb\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trziv916T0tBeSi59uxH5ydGJ\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tDqGULOXqQ?e=cOBask'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('LQ file version 2:       '),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('LQ file version 3:       '),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('LQ file version 4:       '),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('CC HQ file version 1:    '),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('CC HQ file version 1:    '),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}