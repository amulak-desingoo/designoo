import 'package:designoo/about.dart';
import 'package:designoo/home.dart';
import 'package:designoo/login.dart';
import 'package:designoo/main.dart';
import 'package:designoo/moreDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StageDetails extends StatefulWidget {
  const StageDetails({super.key, required this.title});
  final String title;

  @override
  State<StageDetails> createState() => _StageDetails();
}

class _StageDetails extends State<StageDetails>{
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
                //TextButton(onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Sales(title: '',), ),);
                //}, child: Text('Sales',style: TextStyle(color: Colors.black,fontSize: 20), textAlign: TextAlign.justify,)),
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
                  width: 500,
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Ds2084_AD (Sample)',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo Data Download'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo Data Error'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo Designing Department'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo LQ file Shared'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo Corrections'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo Payment and Finance'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo Color Correction Department'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Designoo HQ Finalization'),
                      ),
                    ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,bottom: 20),
                    child: ElevatedButton(onPressed: (){}, child: Text('NOTIFY',style: TextStyle(color: Colors.black),)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}