// toastnotification.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../macros.dart';
import '../../../utils.dart';
import '../../../types.dart';
import '../../../winrt_callbacks.dart';
import '../../../winrt_helpers.dart';

import '../../../extensions/hstring_array.dart';

import '../../../winrt/ui/notifications/itoastnotification.dart';
import '../../../winrt/ui/notifications/itoastnotification2.dart';
import '../../../winrt/ui/notifications/itoastnotification3.dart';
import '../../../winrt/ui/notifications/itoastnotification4.dart';
import '../../../winrt/ui/notifications/itoastnotification6.dart';
import 'itoastnotificationfactory.dart';
import '../../../winrt/data/xml/dom/xmldocument.dart';
import '../../../winrt/foundation/ireference.dart';
import '../../../winrt/ui/notifications/toastdismissedeventargs.dart';
import '../../../winrt/ui/notifications/toastfailedeventargs.dart';
import '../../../winrt/ui/notifications/notificationdata.dart';
import '../../../com/iinspectable.dart';

/// {@category Class}
/// {@category winrt}
class ToastNotification extends IInspectable
    implements
        IToastNotification,
        IToastNotification2,
        IToastNotification3,
        IToastNotification4,
        IToastNotification6 {
  ToastNotification.fromRawPointer(super.ptr);

  static const _className = 'Windows.UI.Notifications.ToastNotification';

  // IToastNotificationFactory methods
  static ToastNotification CreateToastNotification(Pointer<COMObject> content) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IToastNotificationFactory);

    try {
      final result = IToastNotificationFactory.fromRawPointer(activationFactory)
          .CreateToastNotification(content);
      return ToastNotification.fromRawPointer(result);
    } finally {
      free(activationFactory);
    }
  }

  // IToastNotification methods
  late final _iToastNotification =
      IToastNotification.fromRawPointer(toInterface(IID_IToastNotification));

  @override
  Pointer<COMObject> get Content => _iToastNotification.Content;

  @override
  set ExpirationTime(Pointer<COMObject> value) =>
      _iToastNotification.ExpirationTime = value;

  @override
  Pointer<COMObject> get ExpirationTime => _iToastNotification.ExpirationTime;

  @override
  int add_Dismissed(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iToastNotification.add_Dismissed(handler);

  @override
  void remove_Dismissed(int token) =>
      _iToastNotification.remove_Dismissed(token);

  @override
  int add_Activated(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iToastNotification.add_Activated(handler);

  @override
  void remove_Activated(int token) =>
      _iToastNotification.remove_Activated(token);

  @override
  int add_Failed(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iToastNotification.add_Failed(handler);

  @override
  void remove_Failed(int token) => _iToastNotification.remove_Failed(token);
  // IToastNotification2 methods
  late final _iToastNotification2 =
      IToastNotification2.fromRawPointer(toInterface(IID_IToastNotification2));

  @override
  set Tag(String value) => _iToastNotification2.Tag = value;

  @override
  String get Tag => _iToastNotification2.Tag;

  @override
  set Group(String value) => _iToastNotification2.Group = value;

  @override
  String get Group => _iToastNotification2.Group;

  @override
  set SuppressPopup(bool value) => _iToastNotification2.SuppressPopup = value;

  @override
  bool get SuppressPopup => _iToastNotification2.SuppressPopup;
  // IToastNotification3 methods
  late final _iToastNotification3 =
      IToastNotification3.fromRawPointer(toInterface(IID_IToastNotification3));

  @override
  int get NotificationMirroring => _iToastNotification3.NotificationMirroring;

  @override
  set NotificationMirroring(int value) =>
      _iToastNotification3.NotificationMirroring = value;

  @override
  String get RemoteId => _iToastNotification3.RemoteId;

  @override
  set RemoteId(String value) => _iToastNotification3.RemoteId = value;
  // IToastNotification4 methods
  late final _iToastNotification4 =
      IToastNotification4.fromRawPointer(toInterface(IID_IToastNotification4));

  @override
  Pointer<COMObject> get Data => _iToastNotification4.Data;

  @override
  set Data(Pointer<COMObject> value) => _iToastNotification4.Data = value;

  @override
  int get Priority => _iToastNotification4.Priority;

  @override
  set Priority(int value) => _iToastNotification4.Priority = value;
  // IToastNotification6 methods
  late final _iToastNotification6 =
      IToastNotification6.fromRawPointer(toInterface(IID_IToastNotification6));

  @override
  bool get ExpiresOnReboot => _iToastNotification6.ExpiresOnReboot;

  @override
  set ExpiresOnReboot(bool value) =>
      _iToastNotification6.ExpiresOnReboot = value;
}
