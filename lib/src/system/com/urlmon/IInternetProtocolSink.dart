// IInternetProtocolSink.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetProtocolSink = '{79EAC9E5-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetProtocolSink extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IInternetProtocolSink(Pointer<COMObject> ptr) : super(ptr);

  int Switch(
    Pointer<PROTOCOLDATA> pProtocolData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROTOCOLDATA> pProtocolData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROTOCOLDATA> pProtocolData,
          )>()(
        ptr.ref.lpVtbl,
        pProtocolData,
      );

  int ReportProgress(
    int ulStatusCode,
    Pointer<Utf16> szStatusText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStatusCode,
            Pointer<Utf16> szStatusText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStatusCode,
            Pointer<Utf16> szStatusText,
          )>()(
        ptr.ref.lpVtbl,
        ulStatusCode,
        szStatusText,
      );

  int ReportData(
    int grfBSCF,
    int ulProgress,
    int ulProgressMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfBSCF,
            Uint32 ulProgress,
            Uint32 ulProgressMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfBSCF,
            int ulProgress,
            int ulProgressMax,
          )>()(
        ptr.ref.lpVtbl,
        grfBSCF,
        ulProgress,
        ulProgressMax,
      );

  int ReportResult(
    int hrResult,
    int dwError,
    Pointer<Utf16> szResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrResult,
            Uint32 dwError,
            Pointer<Utf16> szResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrResult,
            int dwError,
            Pointer<Utf16> szResult,
          )>()(
        ptr.ref.lpVtbl,
        hrResult,
        dwError,
        szResult,
      );
}
