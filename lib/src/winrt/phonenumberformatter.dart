// PhoneNumberFormatter.dart

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
import 'iphonenumberformatter.dart';
import 'iphonenumberformatterstatics.dart';
import 'ivector.dart';
import 'ivectorview.dart';

import '../com/iinspectable.dart';

/// {@category Interface}
/// {@category winrt}
class PhoneNumberFormatter extends IPhoneNumberFormatter {
  PhoneNumberFormatter(super.ptr);

  static const _className =
      'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter';

  static PhoneNumberFormatter TryCreate(String regionCode) {
    final hClassName = convertToHString(_className);

    final pIID = calloc<GUID>()..ref.setGUID(IID_IPhoneNumberFormatterStatics);
    final activationFactory = calloc<COMObject>();
    final phoneNumberFormatter = calloc<COMObject>();

    try {
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactory.cast());
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      IPhoneNumberFormatterStatics(activationFactory)
          .TryCreate(regionCode, phoneNumberFormatter);
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      return PhoneNumberFormatter(phoneNumberFormatter);
    } finally {
      WindowsDeleteString(hClassName);
      free(pIID);
      free(activationFactory);
    }
  }

  static int GetCountryCodeForRegion(String regionCode) {
    final hClassName = convertToHString(_className);

    final pIID = calloc<GUID>()..ref.setGUID(IID_IPhoneNumberFormatterStatics);
    final activationFactory = calloc<COMObject>();

    try {
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactory.cast());
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      final result = IPhoneNumberFormatterStatics(activationFactory)
          .GetCountryCodeForRegion(regionCode);
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      return result;
    } finally {
      WindowsDeleteString(hClassName);
      free(pIID);
      free(activationFactory);
    }
  }

  static String GetNationalDirectDialingPrefixForRegion(
      String regionCode, bool stripNonDigit) {
    final hClassName = convertToHString(_className);

    final pIID = calloc<GUID>()..ref.setGUID(IID_IPhoneNumberFormatterStatics);
    final activationFactory = calloc<COMObject>();

    try {
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactory.cast());
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      final result = IPhoneNumberFormatterStatics(activationFactory)
          .GetNationalDirectDialingPrefixForRegion(regionCode, stripNonDigit);
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      return result;
    } finally {
      WindowsDeleteString(hClassName);
      free(pIID);
      free(activationFactory);
    }
  }
}
