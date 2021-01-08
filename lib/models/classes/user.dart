


import 'package:flutter/rendering.dart';

class User {
  String username;
  String lastname;
  String firstname;
  String emailadress;
  String password;
  String api_key;
  int id;

  User(this.firstname, this.lastname, this.emailadress, this.password,this.username, this.id, this.api_key);

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return User(
      parsedJson['firstname'],
      parsedJson['lastname'],
      parsedJson['emailadress'],
      parsedJson['password'],
      parsedJson['username'],
      parsedJson['api_key'],
      parsedJson['id']
      );
  }

}