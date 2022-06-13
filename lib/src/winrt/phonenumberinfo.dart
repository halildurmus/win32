// phonenumberinfo.dart

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

import 'iphonenumberinfo.dart';
import 'istringable.dart';
import 'iphonenumberinfofactory.dart';
import 'iphonenumberinfostatics.dart';
import '../com/iinspectable.dart';

/// {@category Class}
/// {@category winrt}
class PhoneNumberInfo extends IInspectable implements IPhoneNumberInfo {
  PhoneNumberInfo.from(super.ptr);

  static const _className =
      'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo';

  // IPhoneNumberInfoFactory methods
  static PhoneNumberInfo Create(String number) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPhoneNumberInfoFactory);

    try {
      final result =
          IPhoneNumberInfoFactory.from(activationFactory).Create(number);
      return PhoneNumberInfo.from(result);
    } finally {
      free(activationFactory);
    }
  }

  // IPhoneNumberInfoStatics methods
  static int TryParse(String input, Pointer<COMObject> phoneNumber) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPhoneNumberInfoStatics);

    try {
      return IPhoneNumberInfoStatics.from(activationFactory)
          .TryParse(input, phoneNumber);
    } finally {
      free(activationFactory);
    }
  }

  static int TryParseWithRegion(
      String input, String regionCode, Pointer<COMObject> phoneNumber) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPhoneNumberInfoStatics);

    try {
      return IPhoneNumberInfoStatics.from(activationFactory)
          .TryParseWithRegion(input, regionCode, phoneNumber);
    } finally {
      free(activationFactory);
    }
  }

  // IPhoneNumberInfo methods
  late final _iPhoneNumberInfo =
      IPhoneNumberInfo.from(toInterface(IID_IPhoneNumberInfo));

  @override
  int get CountryCode => _iPhoneNumberInfo.CountryCode;

  @override
  String get PhoneNumber => _iPhoneNumberInfo.PhoneNumber;

  @override
  int GetLengthOfGeographicalAreaCode() =>
      _iPhoneNumberInfo.GetLengthOfGeographicalAreaCode();

  @override
  String GetNationalSignificantNumber() =>
      _iPhoneNumberInfo.GetNationalSignificantNumber();

  @override
  int GetLengthOfNationalDestinationCode() =>
      _iPhoneNumberInfo.GetLengthOfNationalDestinationCode();

  @override
  int PredictNumberKind() => _iPhoneNumberInfo.PredictNumberKind();

  @override
  String GetGeographicRegionCode() =>
      _iPhoneNumberInfo.GetGeographicRegionCode();

  @override
  int CheckNumberMatch(Pointer<COMObject> otherNumber) =>
      _iPhoneNumberInfo.CheckNumberMatch(otherNumber);

  // IStringable methods
  late final _iStringable = IStringable.from(toInterface(IID_IStringable));

  @override
  String toString() => _iStringable.ToString();
}
