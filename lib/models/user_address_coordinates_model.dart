class UserAddressCoordinatesModel{

  String? lat;
  String? lng;

  UserAddressCoordinatesModel({required this.lat, required this.lng});

  factory UserAddressCoordinatesModel.fromJson(Map<String,dynamic>cooUserAddressJson){
    return UserAddressCoordinatesModel(
        lat: cooUserAddressJson['lat'],
        lng: cooUserAddressJson['lng']
    );
  }
}