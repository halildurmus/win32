// IWMMediaProps.dart

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
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMMediaProps = '{96406BCE-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMMediaProps extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMMediaProps(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<GUID> pguidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>()(
        ptr.ref.lpVtbl,
        pguidType,
      );

  int GetMediaType(
    Pointer<WM_MEDIA_TYPE> pType,
    Pointer<Uint32> pcbType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_MEDIA_TYPE> pType,
            Pointer<Uint32> pcbType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_MEDIA_TYPE> pType,
            Pointer<Uint32> pcbType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
        pcbType,
      );

  int SetMediaType(
    Pointer<WM_MEDIA_TYPE> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_MEDIA_TYPE> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_MEDIA_TYPE> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );
}
