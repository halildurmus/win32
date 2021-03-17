// ISupportErrorInfo.dart

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
const IID_ISupportErrorInfo = '{DF0B3D60-548F-101B-8E65-08002B2BD119}';

typedef _InterfaceSupportsErrorInfo_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid);
typedef _InterfaceSupportsErrorInfo_Dart = int Function(
    Pointer obj, Pointer<GUID> riid);

/// {@category Interface}
/// {@category com}
class ISupportErrorInfo extends IUnknown {
  // vtable begins at 3, ends at 3

  ISupportErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int InterfaceSupportsErrorInfo(Pointer<GUID> riid) =>
      Pointer<NativeFunction<_InterfaceSupportsErrorInfo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_InterfaceSupportsErrorInfo_Dart>()(ptr.ref.lpVtbl, riid);
}
