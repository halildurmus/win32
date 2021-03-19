// ISpellCheckerChangedEventHandler.dart

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

import 'IUnknown.dart';

/// @nodoc
const IID_ISpellCheckerChangedEventHandler =
    '{0B83A5B0-792F-4EAB-9799-ACF52C5ED08A}';

typedef _Invoke_Native = Int32 Function(Pointer obj, Pointer sender);
typedef _Invoke_Dart = int Function(Pointer obj, Pointer sender);

/// {@category Interface}
/// {@category com}
class ISpellCheckerChangedEventHandler extends IUnknown {
  // vtable begins at 3, ends at 3

  ISpellCheckerChangedEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int Invoke(Pointer sender) =>
      Pointer<NativeFunction<_Invoke_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Invoke_Dart>()(ptr.ref.lpVtbl, sender);
}
