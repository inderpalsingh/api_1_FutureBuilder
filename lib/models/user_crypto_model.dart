class UserCryptoModel{

  String? coin;
  String? wallet;
  String? network;
  
  UserCryptoModel({required this.coin, required this.wallet, required this.network});

  /// map to model
  factory UserCryptoModel.fromJson(Map<String, dynamic> json){
    return UserCryptoModel(
      coin: json['coin'],
      wallet: json['wallet'], 
      network: json['network'] 
    );
    
  }
  
}