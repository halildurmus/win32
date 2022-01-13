// IMpeg2Demultiplexer.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IPin.dart';

/// @nodoc
const IID_IMpeg2Demultiplexer = '{436EEE9C-264F-4242-90E1-4E330C107512}';

/// {@category Interface}
/// {@category com}
class IMpeg2Demultiplexer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMpeg2Demultiplexer(Pointer<COMObject> ptr) : super(ptr);

  int CreateOutputPin(
    Pointer<AM_MEDIA_TYPE> pMediaType,
    Pointer<Utf16> pszPinName,
    Pointer<Pointer<COMObject>> ppIPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
            Pointer<Utf16> pszPinName,
            Pointer<Pointer<COMObject>> ppIPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
            Pointer<Utf16> pszPinName,
            Pointer<Pointer<COMObject>> ppIPin,
          )>()(
        ptr.ref.lpVtbl,
        pMediaType,
        pszPinName,
        ppIPin,
      );

  int SetOutputPinMediaType(
    Pointer<Utf16> pszPinName,
    Pointer<AM_MEDIA_TYPE> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPinName,
            Pointer<AM_MEDIA_TYPE> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPinName,
            Pointer<AM_MEDIA_TYPE> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        pszPinName,
        pMediaType,
      );

  int DeleteOutputPin(
    Pointer<Utf16> pszPinName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPinName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPinName,
          )>()(
        ptr.ref.lpVtbl,
        pszPinName,
      );
}
