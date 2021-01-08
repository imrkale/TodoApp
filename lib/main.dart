import 'package:flutter/material.dart';
import 'package:TodoApplication/bloc/blocs/user_bloc_provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    userBloc.registerUser("AB", "devilliers", "abd17@gmail.com", "abd", "Mr360");
    return Container(color: Colors.red,);
  }
}
