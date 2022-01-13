// IWMCodecStrings.dart

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
import '../../media/dxmediaobjects/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMCodecStrings = '{A7B2504B-E58A-47FB-958B-CAC7165A057D}';

/// {@category Interface}
/// {@category com}
class IWMCodecStrings extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMCodecStrings(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<DMO_MEDIA_TYPE> pmt,
    int cchLength,
    Pointer<Utf16> szName,
    Pointer<Uint32> pcchLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
            Uint32 cchLength,
            Pointer<Utf16> szName,
            Pointer<Uint32> pcchLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
            int cchLength,
            Pointer<Utf16> szName,
            Pointer<Uint32> pcchLength,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
        cchLength,
        szName,
        pcchLength,
      );

  int GetDescription(
    Pointer<DMO_MEDIA_TYPE> pmt,
    int cchLength,
    Pointer<Utf16> szDescription,
    Pointer<Uint32> pcchLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
            Uint32 cchLength,
            Pointer<Utf16> szDescription,
            Pointer<Uint32> pcchLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
            int cchLength,
            Pointer<Utf16> szDescription,
            Pointer<Uint32> pcchLength,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
        cchLength,
        szDescription,
        pcchLength,
      );
}
