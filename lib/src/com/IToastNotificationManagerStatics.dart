// IToastNotificationManagerStatics.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_IToastNotificationManagerStatics =
    '{50AC103F-D235-4598-BBEF-98FE4D1A3AD4}';

typedef _CreateToastNotifier_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> result);
typedef _CreateToastNotifier_Dart = int Function(
    Pointer obj, Pointer<Pointer> result);

typedef _CreateToastNotifierWithId_Native = Int32 Function(
    Pointer obj, IntPtr applicationId, Pointer<Pointer> result);
typedef _CreateToastNotifierWithId_Dart = int Function(
    Pointer obj, int applicationId, Pointer<Pointer> result);

typedef _GetTemplateContent_Native = Int32 Function(
    Pointer obj, Uint32 type, Pointer<Pointer> result);
typedef _GetTemplateContent_Dart = int Function(
    Pointer obj, int type, Pointer<Pointer> result);

/// {@category Interface}
/// {@category winrt}
class IToastNotificationManagerStatics extends IInspectable {
  // vtable begins at 6, ends at 8

  IToastNotificationManagerStatics(Pointer<COMObject> ptr) : super(ptr);

  int CreateToastNotifier(Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_CreateToastNotifier_Native>>>()
      .value
      .asFunction<_CreateToastNotifier_Dart>()(ptr.ref.lpVtbl, result);

  int CreateToastNotifierWithId(int applicationId, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_CreateToastNotifierWithId_Native>>>()
              .value
              .asFunction<_CreateToastNotifierWithId_Dart>()(
          ptr.ref.lpVtbl, applicationId, result);

  int GetTemplateContent(int type, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_GetTemplateContent_Native>>>()
          .value
          .asFunction<_GetTemplateContent_Dart>()(ptr.ref.lpVtbl, type, result);
}
