// IImePlugInDictDictionaryList.dart

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
import '../../../system/com/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IImePlugInDictDictionaryList =
    '{98752974-B0A6-489B-8F6F-BFF3769C8EEB}';

/// {@category Interface}
/// {@category com}
class IImePlugInDictDictionaryList extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IImePlugInDictDictionaryList(Pointer<COMObject> ptr) : super(ptr);

  int GetDictionariesInUse(
    Pointer<Pointer<SAFEARRAY>> prgDictionaryGUID,
    Pointer<Pointer<SAFEARRAY>> prgDateCreated,
    Pointer<Pointer<SAFEARRAY>> prgfEncrypted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> prgDictionaryGUID,
            Pointer<Pointer<SAFEARRAY>> prgDateCreated,
            Pointer<Pointer<SAFEARRAY>> prgfEncrypted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> prgDictionaryGUID,
            Pointer<Pointer<SAFEARRAY>> prgDateCreated,
            Pointer<Pointer<SAFEARRAY>> prgfEncrypted,
          )>()(
        ptr.ref.lpVtbl,
        prgDictionaryGUID,
        prgDateCreated,
        prgfEncrypted,
      );

  int DeleteDictionary(
    Pointer<Utf16> bstrDictionaryGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDictionaryGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDictionaryGUID,
          )>()(
        ptr.ref.lpVtbl,
        bstrDictionaryGUID,
      );
}
