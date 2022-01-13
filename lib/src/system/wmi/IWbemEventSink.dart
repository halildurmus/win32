// IWbemEventSink.dart

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

import '../../system/wmi/IWbemObjectSink.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/wmi/IWbemEventSink.dart';

/// @nodoc
const IID_IWbemEventSink = '{3AE0080A-7E3A-4366-BF89-0FEEDC931659}';

/// {@category Interface}
/// {@category com}
class IWbemEventSink extends IWbemObjectSink {
  // vtable begins at 5, is 4 entries long.
  IWbemEventSink(Pointer<COMObject> ptr) : super(ptr);

  int SetSinkSecurity(
    int lSDLength,
    Pointer<Uint8> pSD,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSDLength,
            Pointer<Uint8> pSD,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSDLength,
            Pointer<Uint8> pSD,
          )>()(
        ptr.ref.lpVtbl,
        lSDLength,
        pSD,
      );

  int IsActive() => ptr.ref.lpVtbl.value
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

  int GetRestrictedSink(
    int lNumQueries,
    Pointer<Pointer<Utf16>> awszQueries,
    Pointer<COMObject> pCallback,
    Pointer<Pointer<COMObject>> ppSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lNumQueries,
            Pointer<Pointer<Utf16>> awszQueries,
            Pointer<COMObject> pCallback,
            Pointer<Pointer<COMObject>> ppSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lNumQueries,
            Pointer<Pointer<Utf16>> awszQueries,
            Pointer<COMObject> pCallback,
            Pointer<Pointer<COMObject>> ppSink,
          )>()(
        ptr.ref.lpVtbl,
        lNumQueries,
        awszQueries,
        pCallback,
        ppSink,
      );

  int SetBatchingParameters(
    int lFlags,
    int dwMaxBufferSize,
    int dwMaxSendLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Uint32 dwMaxBufferSize,
            Uint32 dwMaxSendLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            int dwMaxBufferSize,
            int dwMaxSendLatency,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        dwMaxBufferSize,
        dwMaxSendLatency,
      );
}
