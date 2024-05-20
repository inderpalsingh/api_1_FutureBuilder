import 'package:api_1/models/hair_model.dart';
import 'package:api_1/models/user_address_model.dart';
import 'package:api_1/models/user_bank_model.dart';
import 'package:api_1/models/user_crypto_model.dart';

class UsersModel {
  num? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  num? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  DateTime? birthDate;
  String? image;
  String? bloodGroup;
  num? height;
  num? weight;
  String? eyeColor;
  UserHairModel? hair;
  String? domain;
  String? ip;
  UserAddressModel? address;
  String? macAddress;
  String? university;
  UserBank? bank;
  UserCryptoModel? crypto;

  UsersModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.maidenName,
      required this.age,
      required this.gender,
      required this.email,
      required this.phone,
      required this.username,
      required this.password,
      required this.birthDate,
      required this.image,
      required this.bloodGroup,
      required this.height,
      required this.weight,
      required this.eyeColor,
      required this.hair,
      required this.domain,
      required this.ip,
      required this.address,
      required this.macAddress,
      required this.university,
      required this.bank,
      required this.crypto
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        maidenName: json['maidenName'],
        age: json['age'],
        gender: json['gender'],
        email: json['email'],
        phone: json['phone'],
        username: json['username'],
        password: json['password'],
        birthDate: DateTime.tryParse(json['birthDate']),
        image: json['image'],
        bloodGroup: json['bloodGroup'],
        height: json['height'],
        weight: json['weight'],
        eyeColor: json['eyeColor'],
        hair: UserHairModel.fromJson(json['hair']),
        domain: json['domain'],
        ip: json['ip'],
        address: UserAddressModel.fromJson(json['address']),
        macAddress: json['macAddress'],
        university: json['university'],
        bank: UserBank.fromJson(json['bank']),
        crypto: UserCryptoModel.fromJson(json['crypto'])
      );
  }
}
