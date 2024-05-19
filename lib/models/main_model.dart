import 'package:api_1/models/user_model.dart';

class MainModel{
  num? limit;
  num? skip;
  num? total;
  List<UsersModel>? users;
  
  MainModel({required this.limit, required this.skip, required this.total, required this.users});
  
  factory MainModel.fromJSON(Map<String, dynamic> json){
    
    List<UsersModel> allUsers = [];
    
    for(Map<String,dynamic> eachUsers in json['users']){
      UsersModel usersModel = UsersModel.fromJson(eachUsers);
      allUsers.add(usersModel);
    }
    
    return MainModel(
        limit: json['limit'],
        skip: json['skip'], 
        total: json['total'], 
        users: allUsers
    );
  }
  
}


