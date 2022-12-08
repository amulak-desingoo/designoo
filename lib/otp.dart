import 'package:designoo/home.dart';
import 'package:designoo/login.dart';
import 'package:designoo/widgets/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Otp extends StatefulWidget {
  final String? phoneNumber;
  const Otp({Key? key, this.phoneNumber,}) : super(key: key);

  @override _Otp createState() => _Otp();
}

class _Otp extends State<Otp> {
  TextEditingController otpTextEditingController = TextEditingController();
  valideateForm()
  {
    if(otpTextEditingController.text.isNotEmpty){
      Fluttertoast.showToast(msg: "OPT is required.");
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(title: '',)),);
                    },child: Text('VERIFY'),
                  ),
                ),
                SizedBox( height: 10),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
                }, child: Text('Change Number',style: TextStyle(color: Colors.black),)),
              ],
            ),
          ),
        ),
      ),
    );
  }

}