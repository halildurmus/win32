// IMFMediaEngineClassFactoryEx.dart

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

import '../../media/mediafoundation/IMFMediaEngineClassFactory.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFMediaSourceExtension.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaKeys.dart';

/// @nodoc
const IID_IMFMediaEngineClassFactoryEx =
    '{C56156C6-EA5B-48A5-9DF8-FBE035D0929E}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineClassFactoryEx extends IMFMediaEngineClassFactory {
  // vtable begins at 6, is 3 entries long.
  IMFMediaEngineClassFactoryEx(Pointer<COMObject> ptr) : super(ptr);

  int CreateMediaSourceExtension(
    int dwFlags,
    Pointer<COMObject> pAttr,
    Pointer<Pointer<COMObject>> ppMSE,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pAttr,
            Pointer<Pointer<COMObject>> ppMSE,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pAttr,
            Pointer<Pointer<COMObject>> ppMSE,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pAttr,
        ppMSE,
      );

  int CreateMediaKeys(
    Pointer<Utf16> keySystem,
    Pointer<Utf16> cdmStorePath,
    Pointer<Pointer<COMObject>> ppKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Utf16> cdmStorePath,
            Pointer<Pointer<COMObject>> ppKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> keySystem,
            Pointer<Utf16> cdmStorePath,
            Pointer<Pointer<COMObject>> ppKeys,
          )>()(
        ptr.ref.lpVtbl,
        keySystem,
        cdmStorePath,
        ppKeys,
      );

  int IsTypeSupported(
    Pointer<Utf16> type,
    Pointer<Utf16> keySystem,
    Pointer<Int32> isSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<Utf16> keySystem,
            Pointer<Int32> isSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<Utf16> keySystem,
            Pointer<Int32> isSupported,
          )>()(
        ptr.ref.lpVtbl,
        type,
        keySystem,
        isSupported,
      );
}
