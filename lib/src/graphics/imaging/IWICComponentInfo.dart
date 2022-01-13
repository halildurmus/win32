// IWICComponentInfo.dart

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
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICComponentInfo = '{23BC3F0A-698B-4357-886B-F24D50671334}';

/// {@category Interface}
/// {@category com}
class IWICComponentInfo extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IWICComponentInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetComponentType(
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int GetCLSID(
    Pointer<GUID> pclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>()(
        ptr.ref.lpVtbl,
        pclsid,
      );

  int GetSigningStatus(
    Pointer<Uint32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int GetAuthor(
    int cchAuthor,
    Pointer<Utf16> wzAuthor,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchAuthor,
            Pointer<Utf16> wzAuthor,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchAuthor,
            Pointer<Utf16> wzAuthor,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchAuthor,
        wzAuthor,
        pcchActual,
      );

  int GetVendorGUID(
    Pointer<GUID> pguidVendor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidVendor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidVendor,
          )>()(
        ptr.ref.lpVtbl,
        pguidVendor,
      );

  int GetVersion(
    int cchVersion,
    Pointer<Utf16> wzVersion,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchVersion,
            Pointer<Utf16> wzVersion,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchVersion,
            Pointer<Utf16> wzVersion,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchVersion,
        wzVersion,
        pcchActual,
      );

  int GetSpecVersion(
    int cchSpecVersion,
    Pointer<Utf16> wzSpecVersion,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchSpecVersion,
            Pointer<Utf16> wzSpecVersion,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchSpecVersion,
            Pointer<Utf16> wzSpecVersion,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchSpecVersion,
        wzSpecVersion,
        pcchActual,
      );

  int GetFriendlyName(
    int cchFriendlyName,
    Pointer<Utf16> wzFriendlyName,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchFriendlyName,
            Pointer<Utf16> wzFriendlyName,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchFriendlyName,
            Pointer<Utf16> wzFriendlyName,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchFriendlyName,
        wzFriendlyName,
        pcchActual,
      );
}
