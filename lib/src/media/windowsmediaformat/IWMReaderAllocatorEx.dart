// IWMReaderAllocatorEx.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMReaderAllocatorEx = '{9F762FA7-A22E-428D-93C9-AC82F3AAFE5A}';

/// {@category Interface}
/// {@category com}
class IWMReaderAllocatorEx extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMReaderAllocatorEx(Pointer<COMObject> ptr) : super(ptr);

  int AllocateForStreamEx(
    int wStreamNum,
    int cbBuffer,
    Pointer<Pointer<COMObject>> ppBuffer,
    int dwFlags,
    int cnsSampleTime,
    int cnsSampleDuration,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint32 cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Uint32 dwFlags,
            Uint64 cnsSampleTime,
            Uint64 cnsSampleDuration,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            int dwFlags,
            int cnsSampleTime,
            int cnsSampleDuration,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        cbBuffer,
        ppBuffer,
        dwFlags,
        cnsSampleTime,
        cnsSampleDuration,
        pvContext,
      );

  int AllocateForOutputEx(
    int dwOutputNum,
    int cbBuffer,
    Pointer<Pointer<COMObject>> ppBuffer,
    int dwFlags,
    int cnsSampleTime,
    int cnsSampleDuration,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Uint32 cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Uint32 dwFlags,
            Uint64 cnsSampleTime,
            Uint64 cnsSampleDuration,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            int dwFlags,
            int cnsSampleTime,
            int cnsSampleDuration,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        cbBuffer,
        ppBuffer,
        dwFlags,
        cnsSampleTime,
        cnsSampleDuration,
        pvContext,
      );
}
