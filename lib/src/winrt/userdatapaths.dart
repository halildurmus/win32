// userdatapaths.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import '../types.dart';
import '../winrt_callbacks.dart';
import '../winrt_helpers.dart';

import '../extensions/hstring_array.dart';

import 'iuserdatapaths.dart';
import 'iuserdatapathsstatics.dart';
import 'user.dart';
import '../com/iinspectable.dart';

/// {@category Class}
/// {@category winrt}
class UserDataPaths extends IInspectable implements IUserDataPaths {
  UserDataPaths.fromPointer(super.ptr);

  static const _className = 'Windows.Storage.UserDataPaths';

  // IUserDataPathsStatics methods
  static Pointer<COMObject> GetForUser(Pointer<COMObject> user) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IUserDataPathsStatics);

    try {
      final result = IUserDataPathsStatics(activationFactory).GetForUser(user);
      return result;
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> GetDefault() {
    final activationFactory =
        CreateActivationFactory(_className, IID_IUserDataPathsStatics);

    try {
      final result = IUserDataPathsStatics(activationFactory).GetDefault();
      return result;
    } finally {
      free(activationFactory);
    }
  }

  // IUserDataPaths methods
  late final _iUserDataPaths = IUserDataPaths(toInterface(IID_IUserDataPaths));

  @override
  String get CameraRoll => _iUserDataPaths.CameraRoll;

  @override
  String get Cookies => _iUserDataPaths.Cookies;

  @override
  String get Desktop => _iUserDataPaths.Desktop;

  @override
  String get Documents => _iUserDataPaths.Documents;

  @override
  String get Downloads => _iUserDataPaths.Downloads;

  @override
  String get Favorites => _iUserDataPaths.Favorites;

  @override
  String get History => _iUserDataPaths.History;

  @override
  String get InternetCache => _iUserDataPaths.InternetCache;

  @override
  String get LocalAppData => _iUserDataPaths.LocalAppData;

  @override
  String get LocalAppDataLow => _iUserDataPaths.LocalAppDataLow;

  @override
  String get Music => _iUserDataPaths.Music;

  @override
  String get Pictures => _iUserDataPaths.Pictures;

  @override
  String get Profile => _iUserDataPaths.Profile;

  @override
  String get Recent => _iUserDataPaths.Recent;

  @override
  String get RoamingAppData => _iUserDataPaths.RoamingAppData;

  @override
  String get SavedPictures => _iUserDataPaths.SavedPictures;

  @override
  String get Screenshots => _iUserDataPaths.Screenshots;

  @override
  String get Templates => _iUserDataPaths.Templates;

  @override
  String get Videos => _iUserDataPaths.Videos;
}
