// IPropertyDescriptionSearchInfo.dart

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

import '../../../ui/shell/propertiessystem/IPropertyDescription.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyDescriptionSearchInfo =
    '{078F91BD-29A2-440F-924E-46A291524520}';

/// {@category Interface}
/// {@category com}
class IPropertyDescriptionSearchInfo extends IPropertyDescription {
  // vtable begins at 24, is 4 entries long.
  IPropertyDescriptionSearchInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSearchInfoFlags(
    Pointer<Uint32> ppdsiFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> ppdsiFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> ppdsiFlags,
          )>()(
        ptr.ref.lpVtbl,
        ppdsiFlags,
      );

  int GetColumnIndexType(
    Pointer<Int32> ppdciType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ppdciType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ppdciType,
          )>()(
        ptr.ref.lpVtbl,
        ppdciType,
      );

  int GetProjectionString(
    Pointer<Pointer<Utf16>> ppszProjection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszProjection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszProjection,
          )>()(
        ptr.ref.lpVtbl,
        ppszProjection,
      );

  int GetMaxSize(
    Pointer<Uint32> pcbMaxSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbMaxSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbMaxSize,
          )>()(
        ptr.ref.lpVtbl,
        pcbMaxSize,
      );
}
