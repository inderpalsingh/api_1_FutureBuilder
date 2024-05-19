class UserHairModel{
  
  String? color;
  String? type;

  UserHairModel({required this.color,required this.type});
  
  /// map to model
  factory UserHairModel.fromJson(Map<String, dynamic> json){
    return UserHairModel(
        color: json['color'],
        type: json['type']
    );
  }
}