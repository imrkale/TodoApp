import 'dart:async';
import 'api.dart';
import 'package:TodoApplication/models/classes/user.dart';

class Repository {
  final apiProvider = ApiProvider();

  Future<User> registerUser(String firstname, String lastname, String emailadress, String password, String username)
    => apiProvider.registerUser(firstname, lastname, emailadress, password, username);

  Future signinUser(String username, String password, String apiKey) 
    => apiProvider.signinUser(username, password, apiKey);
  
  // Future getUserTasks(String apiKey)
  //   => apiProvider.getUserTasks(apiKey);
  //
  // Future<Null> addUserTask(String apiKey, String taskName, String deadline) async {
  //   apiProvider.addUserTask(apiKey, taskName, deadline);
  // }

}