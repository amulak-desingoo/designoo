import 'package:designoo/about.dart';
import 'package:designoo/allProject.dart';
import 'package:designoo/completed.dart';
import 'package:designoo/home.dart';
import 'package:designoo/login.dart';
import 'package:designoo/main.dart';
import 'package:designoo/stageDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnGoing extends StatefulWidget {
  const OnGoing({super.key, required this.title});
  final String title;

  @override
  State<OnGoing> createState() => _OnGoing();
}

class _OnGoing extends State<OnGoing>{
  List<bool> isSelected = [true,false,false];
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
      body: Column(
        children:[
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
                      Navigator.push(context,MaterialPageRoute(builder: (context) => OnGoing(title: '')));
                    },
                    child: Text('On Going',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => AllProject(title: '')));
                    },
                    child: Text('All Project',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Completed(title: '')));
                    },
                    child: Text('Completed',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Card(
                elevation: 3,
                child: Column(
                  children: [
                    SizedBox(
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StageDetails(title: '',)));
                        },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('null\nDS2084_AD(Sample)',style: TextStyle(fontSize: 18),),
                                ),
                              ],
                            )
                        )
                    ),
                    Container(height: 3,),
                    SizedBox(
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text('Status: Corrections Department'),
                            ],
                          ),
                          Wrap(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text('End Date: 2021-11-23'),
                            ],
                          ),
                          Wrap(
                            children: [
                              Icon(Icons.timeline_rounded),
                              Text('Status: Corrections Department'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),),
              Card(
                elevation: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StageDetails(title: '',)));
                        },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Radhikesh x___\nDS916_AD',style: TextStyle(fontSize: 18),),
                                ),
                              ],
                            )
                        )
                    ),
                    Container(height: 3,),
                    SizedBox(
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text('Started From : 2021-08-28'),
                            ],
                          ),
                          Wrap(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text('End Date: 2022-03-28'),
                            ],
                          ),
                          Wrap(
                            children: [
                              Icon(Icons.timeline_rounded),
                              Text('Status: LQ File shared'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),),
            ],
          ),
        ],
      ),
    );
  }
}