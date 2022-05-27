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
  String Format(Pointer<COMObject> number) {
    // TODO: implement Format
    throw UnimplementedError();
  }

  @override
  String FormatPartialString(String number) {
    // TODO: implement FormatPartialString
    throw UnimplementedError();
  }

  @override
  String FormatString(String number) {
    // TODO: implement FormatString
    throw UnimplementedError();
  }

  @override
  String FormatStringWithLeftToRightMarkers(String number) {
    // TODO: implement FormatStringWithLeftToRightMarkers
    throw UnimplementedError();
  }

  @override
  String FormatWithOutputFormat(Pointer<COMObject> number, int numberFormat) {
    // TODO: implement FormatWithOutputFormat
    throw UnimplementedError();
  }
}
