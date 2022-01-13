// IWICStreamProvider.dart

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
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICStreamProvider = '{449494BC-B468-4927-96D7-BA90D31AB505}';

/// {@category Interface}
/// {@category com}
class IWICStreamProvider extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWICStreamProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetStream(
    Pointer<Pointer<COMObject>> ppIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStream,
          )>()(
        ptr.ref.lpVtbl,
        ppIStream,
      );

  int GetPersistOptions(
    Pointer<Uint32> pdwPersistOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPersistOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPersistOptions,
          )>()(
        ptr.ref.lpVtbl,
        pdwPersistOptions,
      );

  int GetPreferredVendorGUID(
    Pointer<GUID> pguidPreferredVendor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidPreferredVendor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidPreferredVendor,
          )>()(
        ptr.ref.lpVtbl,
        pguidPreferredVendor,
      );

  int RefreshStream() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
