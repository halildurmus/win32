// IClosable.dart

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
const IID_IClosable = '{30D5A829-7FA4-4026-83BB-D75BAE4EA99E}';

typedef _Close_Native = Int32 Function(Pointer obj);
typedef _Close_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category winrt}
class IClosable extends IInspectable {
  // vtable begins at 6, ends at 6

  IClosable(Pointer<COMObject> ptr) : super(ptr);

  int Close() => Pointer<NativeFunction<_Close_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(6).value)
      .asFunction<_Close_Dart>()(ptr.ref.lpVtbl);
}
