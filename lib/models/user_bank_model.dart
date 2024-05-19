class UserBank{

  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;
  
  UserBank({required this.cardExpire, required this.cardNumber, required this.cardType, required this.currency, required this.iban});
  
  factory UserBank.fromJson(Map<String, dynamic> json){
    return UserBank(
        cardExpire: json['cardExpire'],
        cardNumber: json['cardNumber'],
        cardType: json['cardType'],
        currency: json['currency'],
        iban: json['iban']
    );
  }
  
}