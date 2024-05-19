import 'dart:convert';

import 'package:api_1/models/main_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getData(), 
          builder: (context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }
            
            if(snapshot.hasError){
              print(snapshot);
              return Center(child: Text('Error : ${snapshot.error}'));
            }
            
            if(snapshot.hasData){
              
              return snapshot.data !=null ? 
                  
                  Column(
                    children: [
                      Text(snapshot.data!.users!.length.toString())
                    ],
                  )
                  
                  : const Center(child: Text('No users data!!'));
            }
            return Container();
          },
      ),
    );
  }

  Future<MainModel?>getData()async{
    MainModel? userData;
    
    String baseUrl = "https://dummyjson.com/users";
    var response =  await http.get(Uri.parse(baseUrl));
    
    if(response.statusCode==200){
      var mData = response.body;
      
      var rawData = jsonDecode(mData);
      print(rawData);

      userData = MainModel.fromJSON(rawData);
      
    }
    return userData;
  }
}
