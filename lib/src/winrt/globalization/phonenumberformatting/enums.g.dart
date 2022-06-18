// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

/// Lists phone number formats supported by this API.
///
/// {@category Enum}
enum PhoneNumberFormat {
  E164(0),
  International(1),
  National(2),
  Rfc3966(3);

  final int value;

  const PhoneNumberFormat(this.value);

  factory PhoneNumberFormat.from(int value) =>
      PhoneNumberFormat.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// The result of calling the PhoneNumberInfo.CheckNumberMatch method.
///
/// {@category Enum}
enum PhoneNumberMatchResult {
  NoMatch(0),
  ShortNationalSignificantNumberMatch(1),
  NationalSignificantNumberMatch(2),
  ExactMatch(3);

  final int value;

  const PhoneNumberMatchResult(this.value);

  factory PhoneNumberMatchResult.from(int value) =>
      PhoneNumberMatchResult.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Describes the results of trying to parse a string into a phone number.
///
/// {@category Enum}
enum PhoneNumberParseResult {
  Valid(0),
  NotANumber(1),
  InvalidCountryCode(2),
  TooShort(3),
  TooLong(4);

  final int value;

  const PhoneNumberParseResult(this.value);

  factory PhoneNumberParseResult.from(int value) =>
      PhoneNumberParseResult.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// The kinds of phone numbers returned by
/// PhoneNumberInfo.PredictNumberKind.
///
/// {@category Enum}
enum PredictedPhoneNumberKind {
  FixedLine(0),
  Mobile(1),
  FixedLineOrMobile(2),
  TollFree(3),
  PremiumRate(4),
  SharedCost(5),
  Voip(6),
  PersonalNumber(7),
  Pager(8),
  UniversalAccountNumber(9),
  Voicemail(10),
  Unknown(11);

  final int value;

  const PredictedPhoneNumberKind(this.value);

  factory PredictedPhoneNumberKind.from(int value) =>
      PredictedPhoneNumberKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
