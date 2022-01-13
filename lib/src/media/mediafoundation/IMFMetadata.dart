// IMFMetadata.dart

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

/// @nodoc
const IID_IMFMetadata = '{F88CFB8C-EF16-4991-B450-CB8C69E51704}';

/// {@category Interface}
/// {@category com}
class IMFMetadata extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFMetadata(Pointer<COMObject> ptr) : super(ptr);

  int SetLanguage(
    Pointer<Utf16> pwszRFC1766,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszRFC1766,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszRFC1766,
          )>()(
        ptr.ref.lpVtbl,
        pwszRFC1766,
      );

  int GetLanguage(
    Pointer<Pointer<Utf16>> ppwszRFC1766,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszRFC1766,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszRFC1766,
          )>()(
        ptr.ref.lpVtbl,
        ppwszRFC1766,
      );

  int GetAllLanguages(
    Pointer<PROPVARIANT> ppvLanguages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> ppvLanguages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> ppvLanguages,
          )>()(
        ptr.ref.lpVtbl,
        ppvLanguages,
      );

  int SetProperty(
    Pointer<Utf16> pwszName,
    Pointer<PROPVARIANT> ppvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<PROPVARIANT> ppvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<PROPVARIANT> ppvValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        ppvValue,
      );

  int GetProperty(
    Pointer<Utf16> pwszName,
    Pointer<PROPVARIANT> ppvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<PROPVARIANT> ppvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<PROPVARIANT> ppvValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        ppvValue,
      );

  int DeleteProperty(
    Pointer<Utf16> pwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
      );

  int GetAllPropertyNames(
    Pointer<PROPVARIANT> ppvNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> ppvNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> ppvNames,
          )>()(
        ptr.ref.lpVtbl,
        ppvNames,
      );
}
