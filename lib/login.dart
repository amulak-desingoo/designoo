import 'package:designoo/otp.dart';
import 'package:designoo/widgets/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();

  valideateForm()
  {
    if(nameTextEditingController.text.length < 3){
      Fluttertoast.showToast(msg: "Name must be atleast 3 Characters.");
    }else if(phoneTextEditingController.text.length < 10){
      Fluttertoast.showToast(msg: "Phone Numver should be 10 digit.");
    }
    else{
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext c){
            return ProgressDialog(message: "Processing Please wait..");
          }
      );
    }
  }

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
                        controller: nameTextEditingController,
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
                        controller: phoneTextEditingController,
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
                          valideateForm();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()),);
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