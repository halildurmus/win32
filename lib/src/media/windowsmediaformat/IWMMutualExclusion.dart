// IWMMutualExclusion.dart

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

import '../../media/windowsmediaformat/IWMStreamList.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMMutualExclusion = '{96406BDE-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMMutualExclusion extends IWMStreamList {
  // vtable begins at 6, is 2 entries long.
  IWMMutualExclusion(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<GUID> pguidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>()(
        ptr.ref.lpVtbl,
        pguidType,
      );

  int SetType(
    Pointer<GUID> guidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
      );
}
