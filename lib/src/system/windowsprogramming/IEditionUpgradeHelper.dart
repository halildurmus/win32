// IEditionUpgradeHelper.dart

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
const IID_IEditionUpgradeHelper = '{D3E9E342-5DEB-43B6-849E-6913B85D503A}';

/// {@category Interface}
/// {@category com}
class IEditionUpgradeHelper extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEditionUpgradeHelper(Pointer<COMObject> ptr) : super(ptr);

  int CanUpgrade(
    Pointer<Int32> isAllowed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isAllowed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isAllowed,
          )>()(
        ptr.ref.lpVtbl,
        isAllowed,
      );

  int UpdateOperatingSystem(
    Pointer<Utf16> contentId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> contentId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> contentId,
          )>()(
        ptr.ref.lpVtbl,
        contentId,
      );

  int ShowProductKeyUI() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetOsProductContentId(
    Pointer<Pointer<Utf16>> contentId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentId,
          )>()(
        ptr.ref.lpVtbl,
        contentId,
      );

  int GetGenuineLocalStatus(
    Pointer<Int32> isGenuine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isGenuine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isGenuine,
          )>()(
        ptr.ref.lpVtbl,
        isGenuine,
      );
}

/// @nodoc
const CLSID_EditionUpgradeHelper = '{01776DF3-B9AF-4E50-9B1C-56E93116D704}';

/// {@category com}
class EditionUpgradeHelper extends IEditionUpgradeHelper {
  EditionUpgradeHelper(Pointer<COMObject> ptr) : super(ptr);

  factory EditionUpgradeHelper.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EditionUpgradeHelper);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEditionUpgradeHelper);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EditionUpgradeHelper(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
