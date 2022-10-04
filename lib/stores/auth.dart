import 'state_keeper.dart';

class AuthStore extends StateKeeper {
  AuthStore._();

  static final AuthStore _instance = AuthStore._();

  factory AuthStore() => _instance;
}
