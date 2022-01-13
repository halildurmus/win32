// IFELanguage.dart

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
import '../../../foundation/structs.g.dart';
import '../../../ui/input/ime/structs.g.dart';

/// @nodoc
const IID_IFELanguage = '{019F7152-E6DB-11D0-83C3-00C04FDDB82E}';

/// {@category Interface}
/// {@category com}
class IFELanguage extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IFELanguage(Pointer<COMObject> ptr) : super(ptr);

  int Open() => ptr.ref.lpVtbl.value
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

  int Close() => ptr.ref.lpVtbl.value
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

  int GetJMorphResult(
    int dwRequest,
    int dwCMode,
    int cwchInput,
    Pointer<Utf16> pwchInput,
    Pointer<Uint32> pfCInfo,
    Pointer<Pointer<MORRSLT>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRequest,
            Uint32 dwCMode,
            Int32 cwchInput,
            Pointer<Utf16> pwchInput,
            Pointer<Uint32> pfCInfo,
            Pointer<Pointer<MORRSLT>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRequest,
            int dwCMode,
            int cwchInput,
            Pointer<Utf16> pwchInput,
            Pointer<Uint32> pfCInfo,
            Pointer<Pointer<MORRSLT>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        dwRequest,
        dwCMode,
        cwchInput,
        pwchInput,
        pfCInfo,
        ppResult,
      );

  int GetConversionModeCaps(
    Pointer<Uint32> pdwCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCaps,
          )>()(
        ptr.ref.lpVtbl,
        pdwCaps,
      );

  int GetPhonetic(
    Pointer<Utf16> string,
    int start,
    int length,
    Pointer<Pointer<Utf16>> phonetic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> string,
            Int32 start,
            Int32 length,
            Pointer<Pointer<Utf16>> phonetic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> string,
            int start,
            int length,
            Pointer<Pointer<Utf16>> phonetic,
          )>()(
        ptr.ref.lpVtbl,
        string,
        start,
        length,
        phonetic,
      );

  int GetConversion(
    Pointer<Utf16> string,
    int start,
    int length,
    Pointer<Pointer<Utf16>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> string,
            Int32 start,
            Int32 length,
            Pointer<Pointer<Utf16>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> string,
            int start,
            int length,
            Pointer<Pointer<Utf16>> result,
          )>()(
        ptr.ref.lpVtbl,
        string,
        start,
        length,
        result,
      );
}
