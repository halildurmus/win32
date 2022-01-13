// IWMOutputMediaProps.dart

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

import '../../media/windowsmediaformat/IWMMediaProps.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMOutputMediaProps = '{96406BD7-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMOutputMediaProps extends IWMMediaProps {
  // vtable begins at 6, is 2 entries long.
  IWMOutputMediaProps(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamGroupName(
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pcchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pcchName,
      );

  int GetConnectionName(
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pcchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pcchName,
      );
}
