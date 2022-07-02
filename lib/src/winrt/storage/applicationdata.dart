// applicationdata.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../../com/iinspectable.dart';
import '../../combase.dart';
import '../../exceptions.dart';
import '../../extensions/hstring_array.dart';
import '../../macros.dart';
import '../../types.dart';
import '../../utils.dart';
import '../../winrt_callbacks.dart';
import '../../winrt_helpers.dart';
import 'iapplicationdata.dart';
import 'iapplicationdatastatics.dart';
import '../../winrt/foundation/iasyncaction.dart';
import '../../winrt/foundation/iasyncoperation.dart';
import '../../winrt/system/user.dart';

/// {@category Class}
/// {@category winrt}
class ApplicationData extends IInspectable implements IApplicationData {
  ApplicationData.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.ApplicationData';

  // IApplicationDataStatics methods
  static ApplicationData get current {
    final activationFactory =
        CreateActivationFactory(_className, IID_IApplicationDataStatics);

    try {
      final result = ApplicationData.fromRawPointer(
          IApplicationDataStatics.fromRawPointer(activationFactory).current);
      return result;
    } finally {
      free(activationFactory);
    }
  }

  // IApplicationData methods
  late final _iApplicationData =
      IApplicationData.fromRawPointer(toInterface(IID_IApplicationData));

  @override
  int get version => _iApplicationData.version;

  @override
  Pointer<COMObject> setVersionAsync(int desiredVersion,
          Pointer<NativeFunction<ApplicationDataSetVersionHandler>> handler) =>
      _iApplicationData.setVersionAsync(desiredVersion, handler);

  @override
  Pointer<COMObject> clearAllAsync() => _iApplicationData.clearAllAsync();

  @override
  Pointer<COMObject> clearAsync(int locality) =>
      _iApplicationData.clearAsync(locality);

  @override
  Pointer<COMObject> get localSettings => _iApplicationData.localSettings;

  @override
  Pointer<COMObject> get roamingSettings => _iApplicationData.roamingSettings;

  @override
  Pointer<COMObject> get localFolder => _iApplicationData.localFolder;

  @override
  Pointer<COMObject> get roamingFolder => _iApplicationData.roamingFolder;

  @override
  Pointer<COMObject> get temporaryFolder => _iApplicationData.temporaryFolder;

  @override
  int add_DataChanged(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iApplicationData.add_DataChanged(handler);

  @override
  void remove_DataChanged(int token) =>
      _iApplicationData.remove_DataChanged(token);

  @override
  void signalDataChanged() => _iApplicationData.signalDataChanged();

  @override
  int get roamingStorageQuota => _iApplicationData.roamingStorageQuota;
}
