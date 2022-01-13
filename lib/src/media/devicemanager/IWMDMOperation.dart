// IWMDMOperation.dart

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
import '../../specialTypes.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMOperation = '{1DCB3A0B-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IWMDMOperation extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IWMDMOperation(Pointer<COMObject> ptr) : super(ptr);

  int BeginRead() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int BeginWrite() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetObjectName(
    Pointer<Utf16> pwszName,
    int nMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Uint32 nMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            int nMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        nMaxChars,
      );

  int SetObjectName(
    Pointer<Utf16> pwszName,
    int nMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Uint32 nMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            int nMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        nMaxChars,
      );

  int GetObjectAttributes(
    Pointer<Uint32> pdwAttributes,
    Pointer<WAVEFORMATEX> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pdwAttributes,
        pFormat,
      );

  int SetObjectAttributes(
    int dwAttributes,
    Pointer<WAVEFORMATEX> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        dwAttributes,
        pFormat,
      );

  int GetObjectTotalSize(
    Pointer<Uint32> pdwSize,
    Pointer<Uint32> pdwSizeHigh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSize,
            Pointer<Uint32> pdwSizeHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSize,
            Pointer<Uint32> pdwSizeHigh,
          )>()(
        ptr.ref.lpVtbl,
        pdwSize,
        pdwSizeHigh,
      );

  int SetObjectTotalSize(
    int dwSize,
    int dwSizeHigh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSize,
            Uint32 dwSizeHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSize,
            int dwSizeHigh,
          )>()(
        ptr.ref.lpVtbl,
        dwSize,
        dwSizeHigh,
      );

  int TransferObjectData(
    Pointer<Uint8> pData,
    Pointer<Uint32> pdwSize,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        pdwSize,
        abMac,
      );

  int End(
    Pointer<Int32> phCompletionCode,
    Pointer<COMObject> pNewObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phCompletionCode,
            Pointer<COMObject> pNewObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phCompletionCode,
            Pointer<COMObject> pNewObject,
          )>()(
        ptr.ref.lpVtbl,
        phCompletionCode,
        pNewObject,
      );
}
