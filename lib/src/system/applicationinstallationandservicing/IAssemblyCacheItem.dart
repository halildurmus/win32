// IAssemblyCacheItem.dart

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
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IAssemblyCacheItem = '{9E3AAEB4-D1CD-11D2-BAB9-00C04F8ECEAE}';

/// {@category Interface}
/// {@category com}
class IAssemblyCacheItem extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAssemblyCacheItem(Pointer<COMObject> ptr) : super(ptr);

  int CreateStream(
    int dwFlags,
    Pointer<Utf16> pszStreamName,
    int dwFormat,
    int dwFormatFlags,
    Pointer<Pointer<COMObject>> ppIStream,
    Pointer<Uint64> puliMaxSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pszStreamName,
            Uint32 dwFormat,
            Uint32 dwFormatFlags,
            Pointer<Pointer<COMObject>> ppIStream,
            Pointer<Uint64> puliMaxSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pszStreamName,
            int dwFormat,
            int dwFormatFlags,
            Pointer<Pointer<COMObject>> ppIStream,
            Pointer<Uint64> puliMaxSize,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszStreamName,
        dwFormat,
        dwFormatFlags,
        ppIStream,
        puliMaxSize,
      );

  int Commit(
    int dwFlags,
    Pointer<Uint32> pulDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Uint32> pulDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Uint32> pulDisposition,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pulDisposition,
      );

  int AbortItem() => ptr.ref.lpVtbl.value
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
}
