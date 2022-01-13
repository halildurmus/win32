// IMFSampleAllocatorControl.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFSampleAllocatorControl = '{DA62B958-3A38-4A97-BD27-149C640C0771}';

/// {@category Interface}
/// {@category com}
class IMFSampleAllocatorControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFSampleAllocatorControl(Pointer<COMObject> ptr) : super(ptr);

  int SetDefaultAllocator(
    int dwOutputStreamID,
    Pointer<COMObject> pAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<COMObject> pAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<COMObject> pAllocator,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        pAllocator,
      );

  int GetAllocatorUsage(
    int dwOutputStreamID,
    Pointer<Uint32> pdwInputStreamID,
    Pointer<Int32> peUsage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputStreamID,
            Pointer<Uint32> pdwInputStreamID,
            Pointer<Int32> peUsage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputStreamID,
            Pointer<Uint32> pdwInputStreamID,
            Pointer<Int32> peUsage,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputStreamID,
        pdwInputStreamID,
        peUsage,
      );
}
