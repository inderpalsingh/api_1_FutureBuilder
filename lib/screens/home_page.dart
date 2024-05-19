import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
   
    );
  }
  
  
  
  getData()async{
    const String baseUrl = "https://dummyjson.com/users";
    http.Response response =  await http.get(Uri.parse(baseUrl));
    
    if(response.statusCode==200){
      var mData = response.body;
      var rawData = jsonDecode(mData);
      
    }
  }
}
