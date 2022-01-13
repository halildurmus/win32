// IWMLanguageList.dart

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
const IID_IWMLanguageList = '{DF683F00-2D49-4D8E-92B7-FB19F6A0DC57}';

/// {@category Interface}
/// {@category com}
class IWMLanguageList extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMLanguageList(Pointer<COMObject> ptr) : super(ptr);

  int GetLanguageCount(
    Pointer<Uint16> pwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwCount,
          )>()(
        ptr.ref.lpVtbl,
        pwCount,
      );

  int GetLanguageDetails(
    int wIndex,
    Pointer<Utf16> pwszLanguageString,
    Pointer<Uint16> pcchLanguageStringLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pcchLanguageStringLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pcchLanguageStringLength,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pwszLanguageString,
        pcchLanguageStringLength,
      );

  int AddLanguageByRFC1766String(
    Pointer<Utf16> pwszLanguageString,
    Pointer<Uint16> pwIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pwIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pwIndex,
          )>()(
        ptr.ref.lpVtbl,
        pwszLanguageString,
        pwIndex,
      );
}
