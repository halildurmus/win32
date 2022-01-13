// IWMDRMWriter.dart

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
const IID_IWMDRMWriter = '{D6EA5DD0-12A0-43F4-90AB-A3FD451E6A07}';

/// {@category Interface}
/// {@category com}
class IWMDRMWriter extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMDRMWriter(Pointer<COMObject> ptr) : super(ptr);

  int GenerateKeySeed(
    Pointer<Utf16> pwszKeySeed,
    Pointer<Uint32> pcwchLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszKeySeed,
            Pointer<Uint32> pcwchLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszKeySeed,
            Pointer<Uint32> pcwchLength,
          )>()(
        ptr.ref.lpVtbl,
        pwszKeySeed,
        pcwchLength,
      );

  int GenerateKeyID(
    Pointer<Utf16> pwszKeyID,
    Pointer<Uint32> pcwchLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszKeyID,
            Pointer<Uint32> pcwchLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszKeyID,
            Pointer<Uint32> pcwchLength,
          )>()(
        ptr.ref.lpVtbl,
        pwszKeyID,
        pcwchLength,
      );

  int GenerateSigningKeyPair(
    Pointer<Utf16> pwszPrivKey,
    Pointer<Uint32> pcwchPrivKeyLength,
    Pointer<Utf16> pwszPubKey,
    Pointer<Uint32> pcwchPubKeyLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPrivKey,
            Pointer<Uint32> pcwchPrivKeyLength,
            Pointer<Utf16> pwszPubKey,
            Pointer<Uint32> pcwchPubKeyLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPrivKey,
            Pointer<Uint32> pcwchPrivKeyLength,
            Pointer<Utf16> pwszPubKey,
            Pointer<Uint32> pcwchPubKeyLength,
          )>()(
        ptr.ref.lpVtbl,
        pwszPrivKey,
        pcwchPrivKeyLength,
        pwszPubKey,
        pcwchPubKeyLength,
      );

  int SetDRMAttribute(
    int wStreamNum,
    Pointer<Utf16> pszName,
    int Type,
    Pointer<Uint8> pValue,
    int cbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Utf16> pszName,
            Int32 Type,
            Pointer<Uint8> pValue,
            Uint16 cbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Utf16> pszName,
            int Type,
            Pointer<Uint8> pValue,
            int cbLength,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pszName,
        Type,
        pValue,
        cbLength,
      );
}
