// ApplicationData.dart

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_l1_1_0.dart';
import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../winrt_helpers.dart';
import '../types.dart';

import '../extensions/hstring_array.dart';
import 'iapplicationdata.dart';
import 'iapplicationdatastatics.dart';
import 'ivector.dart';
import 'ivectorview.dart';

import '../com/iinspectable.dart';

const _className = 'Windows.Storage.ApplicationData';

/// {@category Interface}
/// {@category winrt}
class ApplicationData extends IApplicationData {
  ApplicationData(super.ptr);

  static ApplicationData Current() {
    final hClassName = convertToHString(_className);

    final pIID = calloc<GUID>()..ref.setGUID(IID_IApplicationDataStatics);
    final activationFactory = calloc<COMObject>();
    final userDataDefaults = calloc<COMObject>();

    try {
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactory.cast());
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      final applicationDataStatics = IApplicationDataStatics(activationFactory);
      final applicationDataCurrent = applicationDataStatics.Current;
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      return ApplicationData(applicationDataCurrent);
    } finally {
      WindowsDeleteString(hClassName);
      free(pIID);
      free(activationFactory);
      free(userDataDefaults);
    }
  }
}
