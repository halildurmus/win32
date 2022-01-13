// IEncodingFilterFactory.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../system/com/urlmon/IDataFilter.dart';

/// @nodoc
const IID_IEncodingFilterFactory = '{70BDDE00-C18E-11D0-A9CE-006097942311}';

/// {@category Interface}
/// {@category com}
class IEncodingFilterFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEncodingFilterFactory(Pointer<COMObject> ptr) : super(ptr);

  int FindBestFilter(
    Pointer<Utf16> pwzCodeIn,
    Pointer<Utf16> pwzCodeOut,
    DATAINFO info,
    Pointer<Pointer<COMObject>> ppDF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzCodeIn,
            Pointer<Utf16> pwzCodeOut,
            DATAINFO info,
            Pointer<Pointer<COMObject>> ppDF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzCodeIn,
            Pointer<Utf16> pwzCodeOut,
            DATAINFO info,
            Pointer<Pointer<COMObject>> ppDF,
          )>()(
        ptr.ref.lpVtbl,
        pwzCodeIn,
        pwzCodeOut,
        info,
        ppDF,
      );

  int GetDefaultFilter(
    Pointer<Utf16> pwzCodeIn,
    Pointer<Utf16> pwzCodeOut,
    Pointer<Pointer<COMObject>> ppDF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzCodeIn,
            Pointer<Utf16> pwzCodeOut,
            Pointer<Pointer<COMObject>> ppDF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzCodeIn,
            Pointer<Utf16> pwzCodeOut,
            Pointer<Pointer<COMObject>> ppDF,
          )>()(
        ptr.ref.lpVtbl,
        pwzCodeIn,
        pwzCodeOut,
        ppDF,
      );
}
