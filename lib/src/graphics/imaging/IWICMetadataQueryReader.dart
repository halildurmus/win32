// IWICMetadataQueryReader.dart

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
import '../../system/com/IEnumString.dart';

/// @nodoc
const IID_IWICMetadataQueryReader = '{30989668-E1C9-4597-B395-458EEDB808DF}';

/// {@category Interface}
/// {@category com}
class IWICMetadataQueryReader extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWICMetadataQueryReader(Pointer<COMObject> ptr) : super(ptr);

  int GetContainerFormat(
    Pointer<GUID> pguidContainerFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>()(
        ptr.ref.lpVtbl,
        pguidContainerFormat,
      );

  int GetLocation(
    int cchMaxLength,
    Pointer<Utf16> wzNamespace,
    Pointer<Uint32> pcchActualLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchMaxLength,
            Pointer<Utf16> wzNamespace,
            Pointer<Uint32> pcchActualLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchMaxLength,
            Pointer<Utf16> wzNamespace,
            Pointer<Uint32> pcchActualLength,
          )>()(
        ptr.ref.lpVtbl,
        cchMaxLength,
        wzNamespace,
        pcchActualLength,
      );

  int GetMetadataByName(
    Pointer<Utf16> wzName,
    Pointer<PROPVARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzName,
            Pointer<PROPVARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzName,
            Pointer<PROPVARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        wzName,
        pvarValue,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> ppIEnumString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumString,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumString,
      );
}
