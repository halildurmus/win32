// ITfReadingInformationUIElement.dart

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

import '../../ui/textservices/ITfUIElement.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfContext.dart';

/// @nodoc
const IID_ITfReadingInformationUIElement =
    '{EA1EA139-19DF-11D7-A6D2-00065B84435C}';

/// {@category Interface}
/// {@category com}
class ITfReadingInformationUIElement extends ITfUIElement {
  // vtable begins at 7, is 6 entries long.
  ITfReadingInformationUIElement(Pointer<COMObject> ptr) : super(ptr);

  int GetUpdatedFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int GetContext(
    Pointer<Pointer<COMObject>> ppic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppic,
          )>()(
        ptr.ref.lpVtbl,
        ppic,
      );

  int GetString(
    Pointer<Pointer<Utf16>> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>()(
        ptr.ref.lpVtbl,
        pstr,
      );

  int GetMaxReadingStringLength(
    Pointer<Uint32> pcchMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchMax,
          )>()(
        ptr.ref.lpVtbl,
        pcchMax,
      );

  int GetErrorIndex(
    Pointer<Uint32> pErrorIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pErrorIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pErrorIndex,
          )>()(
        ptr.ref.lpVtbl,
        pErrorIndex,
      );

  int IsVerticalOrderPreferred(
    Pointer<Int32> pfVertical,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfVertical,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfVertical,
          )>()(
        ptr.ref.lpVtbl,
        pfVertical,
      );
}
