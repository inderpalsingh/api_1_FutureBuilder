class UserAddressModel {
  String? address;
  String? city;
  String? postalCode;
  String? state;

  List<UserAddressCoordinatesModel>? coordinates;

  UserAddressModel({
    required this.address,
    required this.city,
    required this.postalCode,
    required this.state,
    required this.coordinates});

  factory UserAddressModel.fromJson(Map<String, dynamic> json){
    return UserAddressModel(
      address: json['address'],
      city: json['city'],
      postalCode: json['postalCode'],
      state: json['state'],
      coordinates: json['coordinates']
    );
  }
  

}
class UserAddressCoordinatesModel{
     
  String? lat;
  String? lng;
 
  UserAddressCoordinatesModel({required this.lat, required this.lng});
  
  factory UserAddressCoordinatesModel.fromJson(Map<String,dynamic>cooJson){
    return UserAddressCoordinatesModel(
        lat: cooJson['lat'],
        lng: cooJson['lng']
    );
  }
}