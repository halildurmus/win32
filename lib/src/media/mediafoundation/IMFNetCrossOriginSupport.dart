// IMFNetCrossOriginSupport.dart

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

import '../../system/com/IUnknown.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFNetCrossOriginSupport = '{BC2B7D44-A72D-49D5-8376-1480DEE58B22}';

/// {@category Interface}
/// {@category com}
class IMFNetCrossOriginSupport extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFNetCrossOriginSupport(Pointer<COMObject> ptr) : super(ptr);

  int GetCrossOriginPolicy(
    Pointer<Int32> pPolicy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPolicy,
          )>()(
        ptr.ref.lpVtbl,
        pPolicy,
      );

  int GetSourceOrigin(
    Pointer<Pointer<Utf16>> wszSourceOrigin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> wszSourceOrigin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> wszSourceOrigin,
          )>()(
        ptr.ref.lpVtbl,
        wszSourceOrigin,
      );

  int IsSameOrigin(
    Pointer<Utf16> wszURL,
    Pointer<Int32> pfIsSameOrigin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszURL,
            Pointer<Int32> pfIsSameOrigin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszURL,
            Pointer<Int32> pfIsSameOrigin,
          )>()(
        ptr.ref.lpVtbl,
        wszURL,
        pfIsSameOrigin,
      );
}
