// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

/// Specifies whether notification mirroring is allowed. Mirroring enables a
/// notification to be displayed on multiple devices.
///
/// {@category Enum}
enum NotificationMirroring {
  Allowed(0),
  Disabled(1);

  final int value;

  const NotificationMirroring(this.value);

  factory NotificationMirroring.from(int value) =>
      NotificationMirroring.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the priority of a ToastNotification.
///
/// {@category Enum}
enum ToastNotificationPriority {
  Default(0),
  High(1);

  final int value;

  const ToastNotificationPriority(this.value);

  factory ToastNotificationPriority.from(int value) =>
      ToastNotificationPriority.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the template to use in a toast notification.
///
/// {@category Enum}
enum ToastTemplateType {
  ToastImageAndText01(0),
  ToastImageAndText02(1),
  ToastImageAndText03(2),
  ToastImageAndText04(3),
  ToastText01(4),
  ToastText02(5),
  ToastText03(6),
  ToastText04(7);

  final int value;

  const ToastTemplateType(this.value);

  factory ToastTemplateType.from(int value) =>
      ToastTemplateType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
