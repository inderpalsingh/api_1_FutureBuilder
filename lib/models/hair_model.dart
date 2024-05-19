
class UserHairModel{
  
  String? color;
  String? type;

  UserHairModel({required this.color,required this.type});
  
  /// map to model
  factory UserHairModel.fromJson(Map<String, dynamic> userHairJson){
    return UserHairModel(
        color: userHairJson['color'],
        type: userHairJson['type']
    );
  }
}