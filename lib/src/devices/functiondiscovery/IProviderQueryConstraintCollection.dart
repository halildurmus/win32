// IProviderQueryConstraintCollection.dart

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

/// @nodoc
const IID_IProviderQueryConstraintCollection =
    '{9C243E11-3261-4BCD-B922-84A873D460AE}';

/// {@category Interface}
/// {@category com}
class IProviderQueryConstraintCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IProviderQueryConstraintCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int Get(
    Pointer<Utf16> pszConstraintName,
    Pointer<Pointer<Uint16>> ppszConstraintValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszConstraintName,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszConstraintName,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>()(
        ptr.ref.lpVtbl,
        pszConstraintName,
        ppszConstraintValue,
      );

  int Item(
    int dwIndex,
    Pointer<Pointer<Uint16>> ppszConstraintName,
    Pointer<Pointer<Uint16>> ppszConstraintValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<Uint16>> ppszConstraintName,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<Uint16>> ppszConstraintName,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppszConstraintName,
        ppszConstraintValue,
      );

  int Next(
    Pointer<Pointer<Uint16>> ppszConstraintName,
    Pointer<Pointer<Uint16>> ppszConstraintValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszConstraintName,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszConstraintName,
            Pointer<Pointer<Uint16>> ppszConstraintValue,
          )>()(
        ptr.ref.lpVtbl,
        ppszConstraintName,
        ppszConstraintValue,
      );

  int Skip() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
