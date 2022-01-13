// IEnumMediaTypes.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IEnumMediaTypes.dart';

/// @nodoc
const IID_IEnumMediaTypes = '{89C31040-846B-11CE-97D3-00AA0055595A}';

/// {@category Interface}
/// {@category com}
class IEnumMediaTypes extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumMediaTypes(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cMediaTypes,
    Pointer<Pointer<AM_MEDIA_TYPE>> ppMediaTypes,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cMediaTypes,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppMediaTypes,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cMediaTypes,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppMediaTypes,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cMediaTypes,
        ppMediaTypes,
        pcFetched,
      );

  int Skip(
    int cMediaTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cMediaTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cMediaTypes,
          )>()(
        ptr.ref.lpVtbl,
        cMediaTypes,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
