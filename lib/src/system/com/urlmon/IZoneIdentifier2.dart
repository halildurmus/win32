// IZoneIdentifier2.dart

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

import '../../../system/com/urlmon/IZoneIdentifier.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IZoneIdentifier2 = '{EB5E760C-09EF-45C0-B510-70830CE31E6A}';

/// {@category Interface}
/// {@category com}
class IZoneIdentifier2 extends IZoneIdentifier {
  // vtable begins at 6, is 6 entries long.
  IZoneIdentifier2(Pointer<COMObject> ptr) : super(ptr);

  int GetLastWriterPackageFamilyName(
    Pointer<Pointer<Utf16>> packageFamilyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> packageFamilyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> packageFamilyName,
          )>()(
        ptr.ref.lpVtbl,
        packageFamilyName,
      );

  int SetLastWriterPackageFamilyName(
    Pointer<Utf16> packageFamilyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFamilyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFamilyName,
          )>()(
        ptr.ref.lpVtbl,
        packageFamilyName,
      );

  int RemoveLastWriterPackageFamilyName() => ptr.ref.lpVtbl.value
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

  int GetAppZoneId(
    Pointer<Uint32> zone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> zone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> zone,
          )>()(
        ptr.ref.lpVtbl,
        zone,
      );

  int SetAppZoneId(
    int zone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 zone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int zone,
          )>()(
        ptr.ref.lpVtbl,
        zone,
      );

  int RemoveAppZoneId() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
