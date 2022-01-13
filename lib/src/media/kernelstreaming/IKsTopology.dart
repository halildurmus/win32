// IKsTopology.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IKsTopology = '{28F54683-06FD-11D2-B27A-00A0C9223196}';

/// {@category Interface}
/// {@category com}
class IKsTopology extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IKsTopology(Pointer<COMObject> ptr) : super(ptr);

  int CreateNodeInstance(
    int NodeId,
    int Flags,
    int DesiredAccess,
    Pointer<COMObject> UnkOuter,
    Pointer<GUID> InterfaceId,
    Pointer<Pointer> Interface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NodeId,
            Uint32 Flags,
            Uint32 DesiredAccess,
            Pointer<COMObject> UnkOuter,
            Pointer<GUID> InterfaceId,
            Pointer<Pointer> Interface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NodeId,
            int Flags,
            int DesiredAccess,
            Pointer<COMObject> UnkOuter,
            Pointer<GUID> InterfaceId,
            Pointer<Pointer> Interface,
          )>()(
        ptr.ref.lpVtbl,
        NodeId,
        Flags,
        DesiredAccess,
        UnkOuter,
        InterfaceId,
        Interface,
      );
}
