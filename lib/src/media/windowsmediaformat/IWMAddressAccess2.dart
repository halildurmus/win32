// IWMAddressAccess2.dart

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

import '../../media/windowsmediaformat/IWMAddressAccess.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMAddressAccess2 = '{65A83FC2-3E98-4D4D-81B5-2A742886B33D}';

/// {@category Interface}
/// {@category com}
class IWMAddressAccess2 extends IWMAddressAccess {
  // vtable begins at 7, is 2 entries long.
  IWMAddressAccess2(Pointer<COMObject> ptr) : super(ptr);

  int GetAccessEntryEx(
    int aeType,
    int dwEntryNum,
    Pointer<Pointer<Utf16>> pbstrAddress,
    Pointer<Pointer<Utf16>> pbstrMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 aeType,
            Uint32 dwEntryNum,
            Pointer<Pointer<Utf16>> pbstrAddress,
            Pointer<Pointer<Utf16>> pbstrMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int aeType,
            int dwEntryNum,
            Pointer<Pointer<Utf16>> pbstrAddress,
            Pointer<Pointer<Utf16>> pbstrMask,
          )>()(
        ptr.ref.lpVtbl,
        aeType,
        dwEntryNum,
        pbstrAddress,
        pbstrMask,
      );

  int AddAccessEntryEx(
    int aeType,
    Pointer<Utf16> bstrAddress,
    Pointer<Utf16> bstrMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 aeType,
            Pointer<Utf16> bstrAddress,
            Pointer<Utf16> bstrMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int aeType,
            Pointer<Utf16> bstrAddress,
            Pointer<Utf16> bstrMask,
          )>()(
        ptr.ref.lpVtbl,
        aeType,
        bstrAddress,
        bstrMask,
      );
}
