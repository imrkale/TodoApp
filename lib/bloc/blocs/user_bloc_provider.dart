import 'package:TodoApplication/models/classes/task.dart';

import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:TodoApplication/models/classes/user.dart';

class UserBloc {
  final _repository = Repository();
  final _userGetter = PublishSubject<User>();

  Observable<User> get getUser => _userGetter.stream;

  registerUser(String firstname, String lastname, String emailadress, String password, String username) async {
    User user = await _repository.registerUser(firstname, lastname, emailadress, password, username);
    _userGetter.sink.add(user);
  }

  signinUser(String username, String password, String apiKey) async {
    User user = await _repository.signinUser(username, password, apiKey);
    _userGetter.sink.add(user);
  }

  dispose() {
    _userGetter.close();
  }
}

// class TaskBloc {
//   final _repository = Repository();
//   final _taskSubject = BehaviorSubject<List<Task>>();
//   String apiKey;
//
//   var _tasks = <Task>[];
//
//   TaskBloc(String api_key) {
//     this.apiKey = api_key;
//     _updateTasks(api_key).then((_) {
//       _taskSubject.add(_tasks);
//     });
//   }
//
//
//   Stream<List<Task>> get getTasks => _taskSubject.stream;
//
//   Future<Null> _updateTasks(String apiKey) async {
//     _tasks = await _repository.getUserTasks(apiKey);
//   }
//
// }
final userBloc = UserBloc();