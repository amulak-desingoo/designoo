import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget{
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
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