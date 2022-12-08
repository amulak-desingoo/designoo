import 'package:designoo/Client/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

//------------------------------------------------------ About
class ClientAbout extends StatelessWidget{
  const ClientAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(60),bottomLeft: Radius.circular(60)),
            child: Container(
              color: Colors.yellow,
              height: 200,
              child: Center(
                  child: Image.asset('images/logo.png',
                    width: 120,
                    height: 120,
                  )
              ),
            ),
          ),
          Container(height: 20,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Designoo Media - Collection of Personal Memories shot by Professionals Designoo mesia is a Album Designing company offers services to wedding photographers. It is an innovative work driven company, using Contemporary media to change the world of photography.", style: TextStyle(fontSize: 20),),
                  Container(height: 10,),
                  Text('Email: Info@dskkr.com',style: TextStyle(fontSize: 20,),),
                  Container(height: 10,),
                  Text('Addess: House no 43 Sec 30 Gurgon',style: TextStyle(fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.only(top:180),
                    child: Text('Terms and Conditions & privacy policy Third Party Notics',style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//================================================ on going

class ClientOnGoing extends StatefulWidget {
  const ClientOnGoing({super.key, required this.title});
  final String title;

  @override
  State<ClientOnGoing> createState() => _ClientOnGoing();
}

class _ClientOnGoing extends State<ClientOnGoing>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deals'),),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOnGoing(title: ''), ),);
                  },
                  label: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.home,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientAbout()),);
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ClientOnGoing(title: '')));
                    },
                    child: Text('On Going',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ClientAllProject(title: '')));
                    },
                    child: Text('All Project',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ClientCompleted(title: '')));
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: Colors.white,
        spaceBetweenChildren: 20,
        children: [
            SpeedDialChild(
              //onTap: ,
              child: Icon(Icons.quiz_outlined),
              label: "FAQ's",
            ),
          SpeedDialChild(
            child: Icon(Icons.message),
            label: "Message",
          ),
          SpeedDialChild(
            child: Icon(Icons.fiber_new_rounded),
            label: "Add New",
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AddNew(title: '')));},
          ),
        ],
      ),
    );
  }
}

//================================================ all project

class ClientAllProject extends StatefulWidget {
  const ClientAllProject({super.key, required this.title});
  final String title;

  @override
  State<ClientAllProject> createState() => _ClientAllProject();
}

class _ClientAllProject extends State<ClientAllProject>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deals'),
      ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOnGoing(title: ''), ),);
                  },
                  label: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.home,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientAbout()),);
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => ClientOnGoing(title: '')));
                      },
                      child: Text('On Going',style: TextStyle(color: Colors.black,fontSize: 18),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => ClientAllProject(title: '')));
                      },
                      child: Text('All Project',style: TextStyle(color: Colors.black,fontSize: 18),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => ClientCompleted(title: '')));
                      },
                      child: Text('Completed',style: TextStyle(color: Colors.black,fontSize: 18),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                    hintText: "Search Deal",
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                    )
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
                Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: Colors.white,
        spaceBetweenChildren: 20,
        children: [
          SpeedDialChild(
            //onTap: ,
            child: Icon(Icons.quiz_outlined),
            label: "FAQ's",
          ),
          SpeedDialChild(
            child: Icon(Icons.message),
            label: "Message",
          ),
          SpeedDialChild(
            child: Icon(Icons.fiber_new_rounded),
            label: "Add New",
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AddNew(title: '')));},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              showDialog(
                  context: context, builder: (context){
                return Center(
                  child: Column(
                    children: [
                      Container(
                        child: AlertDialog(
                          title: Text('Choose stage'),
                          content: Column(
                            children: [
                              Row(children: [
                                Radio(value: 1, groupValue: 1,
                                  onChanged: (value){
                                    setState(() {});
                                  },
                                ),
                                SizedBox(width:10),
                                Text('DATA DOWNLOAD'),
                              ],),
                              Row(children: [
                                Radio(value: 2, groupValue: 2,
                                  onChanged: (value){
                                    setState(() { });
                                  },
                                ),
                                SizedBox(width:10),
                                Text('DATA ERROR'),
                              ],),
                              Row(children: [
                                Radio(value: 3, groupValue: 3,
                                  onChanged: (value){
                                    setState(() { });
                                  },
                                ),
                                SizedBox(width:10),
                                Text('DESIGNING DEPARTMENT'),
                              ],),
                              Row(children: [
                                Radio(value: 4, groupValue: 4,
                                  onChanged: (value){
                                    setState(() { });
                                  },
                                ),
                                SizedBox(width:10),
                                Text('LQFILE SHARED'),
                              ],),
                              Row(children: [
                                Radio(value: 5, groupValue: 5,
                                  onChanged: (value){
                                    setState(() { });
                                  },
                                ),
                                SizedBox(width:10),
                                Text('CORRECTION DEPARTMENT'),
                              ],),
                              Row(children: [
                                Radio(value: 6, groupValue: 6,
                                  onChanged: (value){
                                    setState(() {});
                                  },
                                ),
                                SizedBox(width:10),
                                Text('PAYMENT AND FINANCE'),
                              ],),
                              Row(children: [
                                Radio(value: 7, groupValue: 7,
                                  onChanged: (value){
                                    setState(() { });
                                  },
                                ),
                                SizedBox(width:10),
                                Text('COLOR CORRECTION'),
                              ],),
                              Row(children: [
                                Radio(value: 8, groupValue: 8,
                                  onChanged: (value){
                                    setState(() { });
                                  },
                                ),
                                SizedBox(width:10),
                                Text('HQ FINALIZATION'),
                              ],),
                            ],),
                          actions: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    }, child: Text('Apply',style: TextStyle(color: Colors.white), ),
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text('Cancel',style: TextStyle(color: Colors.white),),
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
                child: Text('Filter Deals',style: TextStyle(color: Colors.black),)),
          ],),
      ),
    );
  }
}

//================================================ completed

class ClientCompleted extends StatefulWidget {
  const ClientCompleted({super.key, required this.title});
  final String title;

  @override
  State<ClientCompleted> createState() => _ClientCompleted();
}

class _ClientCompleted extends State<ClientCompleted>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deals'),
      ),
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
                    child: Text('User Name',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOnGoing(title: ''), ),);
                  },
                  label: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.home,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientAbout()),);
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ClientOnGoing(title: '')));
                    },
                    child: Text('On Going',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ClientAllProject(title: '')));
                    },
                    child: Text('All Project',style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ClientCompleted(title: '')));
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
              Card(
                elevation: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStageDetails(title: '',)));
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
            ],
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: Colors.white,
        spaceBetweenChildren: 20,
        children: [
          SpeedDialChild(
            //onTap: ,
            child: Icon(Icons.quiz_outlined),
            label: "FAQ's",
          ),
          SpeedDialChild(
            child: Icon(Icons.message),
            label: "Message",
          ),
          SpeedDialChild(
            child: Icon(Icons.fiber_new_rounded),
            label: "Add New",
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AddNew(title: '')));},
          ),
        ],
      ),
    );
  }
}

//================================================ StageDetails

class ClientStageDetails extends StatefulWidget {
  const ClientStageDetails({super.key, required this.title});
  final String title;

  @override
  State<ClientStageDetails> createState() => _ClientStageDetails();
}

class _ClientStageDetails extends State<ClientStageDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deals'),
      ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOnGoing(title: ''), ),);
                  },
                  label: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.home,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientAbout()),);
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ClientStageDetails(title: '')));
                        },
                        child: Text('Stage Details',style: TextStyle(color: Colors.black,fontSize: 18),),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ClientMoreDetails(title: '')));
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

//================================================ MoreDetails

class ClientMoreDetails extends StatefulWidget {
  const ClientMoreDetails({super.key, required this.title});
  final String title;

  @override
  State<ClientMoreDetails> createState() => _ClientMoreDetails();
}

class _ClientMoreDetails extends State<ClientMoreDetails>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deals'),
      ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOnGoing(title: ''), ),);
                  },
                  label: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.home,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientAbout()),);
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ClientStageDetails(title: '')));
                        },
                        child: Text('Stage Details',style: TextStyle(color: Colors.black,fontSize: 18),),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ClientMoreDetails(title: '')));
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

//================================================ MoreDetails

class AddNew extends StatefulWidget {
  const AddNew({super.key, required this.title});
  final String title;

  @override
  State<AddNew> createState() => _AddNew();
}

class _AddNew extends State<AddNew>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Deal'),
      ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOnGoing(title: ''), ),);
                  },
                  label: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 20),),
                  icon: const Icon(Icons.home,color: Colors.black,),),
                TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientAbout()),);
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
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
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('New Deal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                Text('Company Nmae     : Misty Visuals'),
                                Text('Contact                    : 8629010401'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Data Link :*'),
                                Container(height: 30,),
                                Text('___________________________________________________'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Couple Name'),
                                Container(height: 30,),
                                Text('_____________________________________________________'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                    Card(child:
                      Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Sheet Size'),
                            ),
                          ],
                        ),
                        Row(children: [
                          Radio(value: 1, groupValue: 1,
                            onChanged: (value){
                              setState(() {});
                            },
                          ),
                          SizedBox(width:10),
                          Text('12 X 36'),
                        ],),
                        Row(children: [
                          Radio(value: 2, groupValue: 2,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('12 X 30'),
                        ],),
                        Row(children: [
                          Radio(value: 3, groupValue: 3,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('12 X 24'),
                        ],),
                        Row(children: [
                          Radio(value: 4, groupValue: 4,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('17 X 24'),
                        ],),
                        Row(children: [
                          Radio(value: 5, groupValue: 5,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('14 X 40'),
                        ],),
                        Row(children: [
                          Radio(value: 6, groupValue: 6,
                            onChanged: (value){
                              setState(() {});
                            },
                          ),
                          SizedBox(width:10),
                          Text('15 X 24'),
                        ],),
                        Row(children: [
                          Radio(value: 7, groupValue: 7,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('15 X 30'),
                        ],),
                        Row(children: [
                          Radio(value: 8, groupValue: 8,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('20 X 30'),
                        ],),
                        Row(children: [
                          Radio(value: 8, groupValue: 8,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('8.3 X 11.7 (A4)'),
                        ],),
                        Row(children: [
                          Radio(value: 8, groupValue: 8,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('5.8 X 8.3 (A5)'),
                        ],),
                        Row(children: [
                          Radio(value: 8, groupValue: 8,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('8 X 12'),
                        ],),
                        Row(children: [
                          Radio(value: 8, groupValue: 8,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('10 X 20'),
                        ],),
                        Row(children: [
                          Radio(value: 8, groupValue: 8,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('18 X 24'),
                        ],),
                        Row(children: [
                          Radio(value: 8, groupValue: 8,
                            onChanged: (value){
                              setState(() { });
                            },
                          ),
                          SizedBox(width:10),
                          Text('8 X 24'),
                        ],),
                      ],),
                    ),
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('DPI(dot per inch) :*'),
                                Container(height: 30,),
                                Text('_____________________________________________________'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                    Card(child:
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Culling :*'),
                            ),
                          ],
                        ),
                        Row(children: [
                          Radio(value: 1, groupValue: 1,
                            onChanged: (value){
                              setState(() {});
                            },
                          ),
                          SizedBox(width:10),
                          Text('Yes'),
                        ],),
                        Row(children: [
                          Radio(value: 1, groupValue: 1,
                            onChanged: (value){
                              setState(() {});
                            },
                          ),
                          SizedBox(width:10),
                          Text('No'),
                        ],),
                      ],),
                    ),
                    Card(child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Logo*'),
                            ],
                          ),
                          Container(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                  onPressed: (){},
                                  child: Wrap(children: [
                                    Icon(Icons.image_search),
                                    Text('Select Logo'),
                                  ],)
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('No of Pictures :*'),
                                Container(height: 30,),
                                Text('_____________________________________________________'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('No of Sheets :*'),
                                Container(height: 30,),
                                Text('_____________________________________________________'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Design Type :*'),
                                Container(height: 30,),
                                Text('_____________________________________________________'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                    Card(elevation: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Designing comments(if any)'),
                                Container(height: 30,),
                                Text('_____________________________________________________'),
                              ],
                            ),
                          ),
                        ],
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){}, child: Text('Submit'),),
                  TextButton(onPressed: (){}, child: Text('Clear All',style: TextStyle(color: Colors.black),)),
                ],),
            ),
          ],
        ),
      ),
    );
  }
}