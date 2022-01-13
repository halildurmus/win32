// IMFStreamDescriptor.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaTypeHandler.dart';

/// @nodoc
const IID_IMFStreamDescriptor = '{56C03D9C-9DBB-45F5-AB4B-D80F47C05938}';

/// {@category Interface}
/// {@category com}
class IMFStreamDescriptor extends IMFAttributes {
  // vtable begins at 33, is 2 entries long.
  IMFStreamDescriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamIdentifier(
    Pointer<Uint32> pdwStreamIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStreamIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStreamIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        pdwStreamIdentifier,
      );

  int GetMediaTypeHandler(
    Pointer<Pointer<COMObject>> ppMediaTypeHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaTypeHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaTypeHandler,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaTypeHandler,
      );
}
