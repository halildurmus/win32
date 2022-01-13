// IShellUIHelper8.dart

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

import '../../ui/shell/IShellUIHelper7.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellUIHelper8 = '{66DEBCF2-05B0-4F07-B49B-B96241A65DB2}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper8 extends IShellUIHelper7 {
  // vtable begins at 97, is 7 entries long.
  IShellUIHelper8(Pointer<COMObject> ptr) : super(ptr);

  int GetCVListData(
    Pointer<Pointer<Utf16>> pbstrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>()(
        ptr.ref.lpVtbl,
        pbstrResult,
      );

  int GetCVListLocalData(
    Pointer<Pointer<Utf16>> pbstrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>()(
        ptr.ref.lpVtbl,
        pbstrResult,
      );

  int GetEMIEListData(
    Pointer<Pointer<Utf16>> pbstrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>()(
        ptr.ref.lpVtbl,
        pbstrResult,
      );

  int GetEMIEListLocalData(
    Pointer<Pointer<Utf16>> pbstrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrResult,
          )>()(
        ptr.ref.lpVtbl,
        pbstrResult,
      );

  int OpenFavoritesPane() => ptr.ref.lpVtbl.value
          .elementAt(101)
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

  int OpenFavoritesSettings() => ptr.ref.lpVtbl.value
          .elementAt(102)
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

  int LaunchInHVSI(
    Pointer<Utf16> bstrUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
          )>()(
        ptr.ref.lpVtbl,
        bstrUrl,
      );
}
