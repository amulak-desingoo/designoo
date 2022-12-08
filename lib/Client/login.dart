import 'dart:async';
import 'package:designoo/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home.dart';

class MyClient extends StatelessWidget {
  const MyClient({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: ClientSplashScreen(),
    );
  }
}

//-------------------------------------------------------------- SplashScreen
class ClientSplashScreen extends StatefulWidget {
  @override
  State<ClientSplashScreen> createState() => _ClientSplashScreenState();
}

class _ClientSplashScreenState extends State<ClientSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ClientLogIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Stack(
          children: [
            Center(
              child: Image.asset('images/logo.png',
                width: 150,
                height: 150,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text('Welcome to Designoo..',style: TextStyle(color: Colors.black87),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------- LogIn
class ClientLogIn extends StatefulWidget {
  const ClientLogIn({Key? key}) : super(key: key);

  @override
  State<ClientLogIn> createState() => _ClientLogIn();
}

class _ClientLogIn extends State<ClientLogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Hello',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  Text('Welcome Back to',style: TextStyle(fontSize: 16,color: Colors.black),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/logo.png',width: 70,height: 70,),
                  ),
                  Container(height: 100,),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name',style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      Container(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone Number',style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                        ),
                      ),
                      Container(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('we will send you an SMS to verify your Number.',style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(
                        width: 400,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOtp()),);
                        }, child: Text('SEND OTP')),
                      ),
                    ],
                  ),
                  Container(height: 140,),
                  Text('Terms and Conditions & privacy policy'),
                ],
              ),
            ),
          )
      ),
    );
  }
}

//------------------------------------------------------------------ otp
class ClientOtp extends StatefulWidget {
  final String? phoneNumber;
  const ClientOtp({Key? key, this.phoneNumber,}) : super(key: key);

  @override _ClientOtp createState() => _ClientOtp();
}

class _ClientOtp extends State<ClientOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text( "Thanks!",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),
                SizedBox( height: 10),
                Text( "We are sending a code to...", style: TextStyle(fontSize: 16,), ),
                Text( "+91 8286311921", style: TextStyle(fontSize: 16,color: Colors.grey), ),
                SizedBox( height: 25, ),
                Text( "Enter Otp",style: TextStyle(fontSize: 22,color: Colors.black ),),
                SizedBox( height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 140,right: 140),

                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox( height: 30, ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( "Didn't get the OTP?",style: TextStyle(fontSize: 15,),  ),
                      TextButton(onPressed: (){},
                          child: Text('Resend OTP',style: TextStyle(fontSize: 15,color: Colors.grey),))
                    ],
                  ),
                ),
                SizedBox( height: 10),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ClientOnGoing(title: '',)),);
                    },child: Text('VERIFY'),
                  ),
                ),
                SizedBox( height: 10),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLogIn()));
                }, child: Text('Change Number',style: TextStyle(color: Colors.black),)),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
