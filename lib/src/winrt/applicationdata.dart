// applicationdata.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../com/iinspectable.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../extensions/hstring_array.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../winrt_callbacks.dart';
import '../winrt_helpers.dart';
import 'iapplicationdata.dart';
import 'iapplicationdatastatics.dart';
import 'iasyncaction.dart';
import 'iasyncoperation.dart';
import 'user.dart';

/// {@category Class}
/// {@category winrt}
class ApplicationData extends IInspectable implements IApplicationData {
  ApplicationData.from(super.ptr);

  static const _className = 'Windows.Storage.ApplicationData';

  // IApplicationDataStatics methods
  static ApplicationData get Current {
    final activationFactory =
        CreateActivationFactory(_className, IID_IApplicationDataStatics);

    try {
      final result = ApplicationData.from(
          IApplicationDataStatics.from(activationFactory).Current);
      return result;
    } finally {
      free(activationFactory);
    }
  }

  // IApplicationData methods
  late final _iApplicationData =
      IApplicationData.from(toInterface(IID_IApplicationData));

  @override
  int get Version => _iApplicationData.Version;

  @override
  Pointer<COMObject> SetVersionAsync(int desiredVersion,
          Pointer<NativeFunction<ApplicationDataSetVersionHandler>> handler) =>
      _iApplicationData.SetVersionAsync(desiredVersion, handler);

  @override
  Pointer<COMObject> ClearAllAsync() => _iApplicationData.ClearAllAsync();

  @override
  Pointer<COMObject> ClearAsync(int locality) =>
      _iApplicationData.ClearAsync(locality);

  @override
  Pointer<COMObject> get LocalSettings => _iApplicationData.LocalSettings;

  @override
  Pointer<COMObject> get RoamingSettings => _iApplicationData.RoamingSettings;

  @override
  Pointer<COMObject> get LocalFolder => _iApplicationData.LocalFolder;

  @override
  Pointer<COMObject> get RoamingFolder => _iApplicationData.RoamingFolder;

  @override
  Pointer<COMObject> get TemporaryFolder => _iApplicationData.TemporaryFolder;

  @override
  int add_DataChanged(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iApplicationData.add_DataChanged(handler);

  @override
  void remove_DataChanged(int token) =>
      _iApplicationData.remove_DataChanged(token);

  @override
  void SignalDataChanged() => _iApplicationData.SignalDataChanged();

  @override
  int get RoamingStorageQuota => _iApplicationData.RoamingStorageQuota;
}
