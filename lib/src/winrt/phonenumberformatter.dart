// PhoneNumberFormatter.dart

// ignore_for_file: unused_import
// ignore_for_file: directives_ordering, non_constant_identifier_names

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../utils.dart';
import '../winrt_helpers.dart';

import 'iphonenumberformatter.dart';
import 'iphonenumberformatterstatics.dart';
import '../com/iinspectable.dart';

/// {@category winrt}
class PhoneNumberFormatter extends IInspectable
    implements IPhoneNumberFormatter {
  PhoneNumberFormatter() : super(ActivateClass(_className));
  PhoneNumberFormatter.fromPointer(super.ptr);

  static const _className =
      'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter';
  late final _iphonenumberformatter =
      IPhoneNumberFormatter(toInterface(IID_IPhoneNumberFormatter));

  static PhoneNumberFormatter TryCreate(String regionCode) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPhoneNumberFormatterStatics);
    final phoneNumberFormatter = calloc<COMObject>();

    try {
      IPhoneNumberFormatterStatics(activationFactory)
          .TryCreate(regionCode, phoneNumberFormatter);
      return PhoneNumberFormatter.fromPointer(phoneNumberFormatter);
    } finally {
      free(activationFactory);
    }
  }

  static int GetCountryCodeForRegion(String regionCode) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPhoneNumberFormatterStatics);

    try {
      final result = IPhoneNumberFormatterStatics(activationFactory)
          .GetCountryCodeForRegion(regionCode);
      return result;
    } finally {
      free(activationFactory);
    }
  }

  static String GetNationalDirectDialingPrefixForRegion(
      String regionCode, bool stripNonDigit) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPhoneNumberFormatterStatics);

    try {
      final result = IPhoneNumberFormatterStatics(activationFactory)
          .GetNationalDirectDialingPrefixForRegion(regionCode, stripNonDigit);
      return result;
    } finally {
      free(activationFactory);
    }
  }

  @override
  String Format(Pointer<COMObject> number) =>
      _iphonenumberformatter.Format(number);

  @override
  String FormatPartialString(String number) =>
      _iphonenumberformatter.FormatPartialString(number);

  @override
  String FormatString(String number) =>
      _iphonenumberformatter.FormatString(number);

  @override
  String FormatStringWithLeftToRightMarkers(String number) =>
      _iphonenumberformatter.FormatStringWithLeftToRightMarkers(number);

  @override
  String FormatWithOutputFormat(Pointer<COMObject> number, int numberFormat) =>
      _iphonenumberformatter.FormatWithOutputFormat(number, numberFormat);
}
