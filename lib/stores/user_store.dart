import 'state_keeper.dart';

class UserStore extends StateKeeper {
  UserStore._();

  static final UserStore _instance = UserStore._();

  factory UserStore() => _instance;
}
