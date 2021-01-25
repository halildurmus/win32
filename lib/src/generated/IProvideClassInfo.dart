// IProvideClassInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../calloc.dart';
import '../constants.dart';
import '../constants_nodoc.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IProvideClassInfo = '{B196B283-BAB4-101A-B69C-00AA00341D07}';

typedef _GetClassInfo_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppTI);
typedef _GetClassInfo_Dart = int Function(Pointer obj, Pointer<IntPtr> ppTI);

/// {@category Interface}
/// {@category com}
class IProvideClassInfo extends IUnknown {
  // vtable begins at 3, ends at 3

  IProvideClassInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetClassInfo(Pointer<IntPtr> ppTI) =>
      Pointer<NativeFunction<_GetClassInfo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetClassInfo_Dart>()(ptr.ref.lpVtbl, ppTI);
}
