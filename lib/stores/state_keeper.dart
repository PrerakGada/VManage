// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class StateKeeper extends ChangeNotifier {
  Map<String, dynamic> data = <String, dynamic>{};
  Map<String, Status> status = {"main": Status.Idle};
  Map<String, String> error = {};

  setStatus(String function, Status _status) {
    status[function] = _status;
    notifyListeners();
  }

  setData(String function, dynamic _data) {
    data[function] = _data;
    notifyListeners();
  }

  setError(String function, String _error, [Status? _status]) {
    if (_error != null) {
      error[function] = _error;
      status[function] = Status.Error;
    } else {
      error[function] = '';
      status[function] = _status ?? Status.Idle;
    }
    notifyListeners();
  }

  reset(String function) {
    data[function] = Status.Idle;
    error.remove(function);
    status.remove(function);
  }

  resetHard() {
    data = <String, dynamic>{};
    status = {"main": Status.Idle};
    error = {};
  }

  notify() {
    notifyListeners();
  }
}

enum Status {
  Idle,
  Loading,
  Done,
  Error,
}
