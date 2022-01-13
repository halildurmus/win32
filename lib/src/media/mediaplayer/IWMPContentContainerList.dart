// IWMPContentContainerList.dart

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
import '../../media/mediaplayer/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPContentContainer.dart';

/// @nodoc
const IID_IWMPContentContainerList = '{A9937F78-0802-4AF8-8B8D-E3F045BC8AB5}';

/// {@category Interface}
/// {@category com}
class IWMPContentContainerList extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMPContentContainerList(Pointer<COMObject> ptr) : super(ptr);

  int GetTransactionType(
    Pointer<Int32> pwmptt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pwmptt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pwmptt,
          )>()(
        ptr.ref.lpVtbl,
        pwmptt,
      );

  int GetContainerCount(
    Pointer<Uint32> pcContainer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcContainer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcContainer,
          )>()(
        ptr.ref.lpVtbl,
        pcContainer,
      );

  int GetContainer(
    int idxContainer,
    Pointer<Pointer<COMObject>> ppContent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idxContainer,
            Pointer<Pointer<COMObject>> ppContent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idxContainer,
            Pointer<Pointer<COMObject>> ppContent,
          )>()(
        ptr.ref.lpVtbl,
        idxContainer,
        ppContent,
      );
}
