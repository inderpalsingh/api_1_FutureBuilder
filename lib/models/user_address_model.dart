import 'package:api_1/models/user_address_coordinates_model.dart';

class UserAddressModel {
  String? address;
  String? city;
  String? postalCode;
  String? state;

  UserAddressCoordinatesModel? coordinates;

  UserAddressModel({
    required this.address,
    required this.city,
    required this.postalCode,
    required this.state,
    required this.coordinates,
  });

  factory UserAddressModel.fromJson(Map<String, dynamic> userAddressJson){
    
    
    return UserAddressModel(
      address: userAddressJson['address'],
      city: userAddressJson['city'],
      postalCode: userAddressJson['postalCode'],
      state: userAddressJson['state'],
      coordinates: userAddressJson['coordinates']
    );
  }
}
