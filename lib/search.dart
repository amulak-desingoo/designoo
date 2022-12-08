
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

var list = [];
var search = [];
TextEditingController? _textEditingController = TextEditingController();
Future getLeads() async{
  final response = await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/kenpf4my1m48ere0/crm.company.list'));
  try{
    final extractedData = json.decode(response.body) as Map<String,dynamic>;
    final List<dynamic> loadedLeads = extractedData['result'];
    list = loadedLeads;
  }catch(error){
    throw(error);
  }
}

class Search extends SearchDelegate {

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: (){
        if(query.isEmpty){
          close(context,null);
        }else{
          query = '';
        }
      },
    ),
  ];

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () =>close(context,null),
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in list){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context,index){
          var result =matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in list){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context,index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }

}