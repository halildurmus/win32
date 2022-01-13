// ContextInfo2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/componentservices/ContextInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ContextInfo2 = '{C99D6E75-2375-11D4-8331-00C04F605588}';

/// {@category Interface}
/// {@category com}
class ContextInfo2 extends ContextInfo {
  // vtable begins at 12, is 3 entries long.
  ContextInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetPartitionId(
    Pointer<Pointer<Utf16>> MIDL__ContextInfo20000,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__ContextInfo20000,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__ContextInfo20000,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__ContextInfo20000,
      );

  int GetApplicationId(
    Pointer<Pointer<Utf16>> MIDL__ContextInfo20001,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__ContextInfo20001,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__ContextInfo20001,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__ContextInfo20001,
      );

  int GetApplicationInstanceId(
    Pointer<Pointer<Utf16>> MIDL__ContextInfo20002,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__ContextInfo20002,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> MIDL__ContextInfo20002,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__ContextInfo20002,
      );
}
