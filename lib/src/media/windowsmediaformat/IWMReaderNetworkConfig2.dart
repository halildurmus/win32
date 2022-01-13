// IWMReaderNetworkConfig2.dart

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

import '../../media/windowsmediaformat/IWMReaderNetworkConfig.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMReaderNetworkConfig2 = '{D979A853-042B-4050-8387-C939DB22013F}';

/// {@category Interface}
/// {@category com}
class IWMReaderNetworkConfig2 extends IWMReaderNetworkConfig {
  // vtable begins at 36, is 13 entries long.
  IWMReaderNetworkConfig2(Pointer<COMObject> ptr) : super(ptr);

  int GetEnableContentCaching(
    Pointer<Int32> pfEnableContentCaching,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableContentCaching,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableContentCaching,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableContentCaching,
      );

  int SetEnableContentCaching(
    int fEnableContentCaching,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableContentCaching,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableContentCaching,
          )>()(
        ptr.ref.lpVtbl,
        fEnableContentCaching,
      );

  int GetEnableFastCache(
    Pointer<Int32> pfEnableFastCache,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableFastCache,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableFastCache,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableFastCache,
      );

  int SetEnableFastCache(
    int fEnableFastCache,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableFastCache,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableFastCache,
          )>()(
        ptr.ref.lpVtbl,
        fEnableFastCache,
      );

  int GetAcceleratedStreamingDuration(
    Pointer<Uint64> pcnsAccelDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcnsAccelDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcnsAccelDuration,
          )>()(
        ptr.ref.lpVtbl,
        pcnsAccelDuration,
      );

  int SetAcceleratedStreamingDuration(
    int cnsAccelDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsAccelDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsAccelDuration,
          )>()(
        ptr.ref.lpVtbl,
        cnsAccelDuration,
      );

  int GetAutoReconnectLimit(
    Pointer<Uint32> pdwAutoReconnectLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAutoReconnectLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAutoReconnectLimit,
          )>()(
        ptr.ref.lpVtbl,
        pdwAutoReconnectLimit,
      );

  int SetAutoReconnectLimit(
    int dwAutoReconnectLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAutoReconnectLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAutoReconnectLimit,
          )>()(
        ptr.ref.lpVtbl,
        dwAutoReconnectLimit,
      );

  int GetEnableResends(
    Pointer<Int32> pfEnableResends,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableResends,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableResends,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableResends,
      );

  int SetEnableResends(
    int fEnableResends,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableResends,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableResends,
          )>()(
        ptr.ref.lpVtbl,
        fEnableResends,
      );

  int GetEnableThinning(
    Pointer<Int32> pfEnableThinning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnableThinning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnableThinning,
          )>()(
        ptr.ref.lpVtbl,
        pfEnableThinning,
      );

  int SetEnableThinning(
    int fEnableThinning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnableThinning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnableThinning,
          )>()(
        ptr.ref.lpVtbl,
        fEnableThinning,
      );

  int GetMaxNetPacketSize(
    Pointer<Uint32> pdwMaxNetPacketSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxNetPacketSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxNetPacketSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxNetPacketSize,
      );
}
