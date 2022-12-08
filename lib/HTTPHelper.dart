import 'dart:convert';
import 'package:http/http.dart' as http;
class HTTPHelper{
  Future<List<Map>> fetchItems() async{
    List<Map> items = [];
    http.Response response = await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/kenpf4my1m48ere0/crm.lead.list'));
    if(response.statusCode == 200){
      String jsonString = response.body;
      items = jsonDecode(jsonString);
    }
    print(response);
    return items;
  }

  Future<Map> getItems(itemId) async{
    Map item = {};
    http.Response response = await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/kenpf4my1m48ere0/crm.lead.list/$itemId'));
    if(response.statusCode == 200){
      String jsonString = response.body;
      item = jsonDecode(jsonString);
    }
    return item;
  }

  var id = [];
  var title = [];

  Future getLeads() async{
    final response = await http.get(Uri.parse('https://designoo.bitrix24.in/rest/269/kenpf4my1m48ere0/crm.lead.list.json'));
    try{
      final extractedData = json.decode(response.body) as Map<String,dynamic>;
      final List<dynamic> loadedLeads = extractedData['result'];
      id = loadedLeads.map((e) => e["ID"]).toList();
      title = loadedLeads.map((e) => e["TITLE"]).toList();
      print(id);
      print(title);
    }catch(error){
      throw (error);
    }
  }
}