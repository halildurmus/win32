// IBDA_IPV4Filter.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_IPV4Filter = '{71985F44-1CA1-11D3-9CC8-00C04F7971E0}';

/// {@category Interface}
/// {@category com}
class IBDA_IPV4Filter extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IBDA_IPV4Filter(Pointer<COMObject> ptr) : super(ptr);

  int GetMulticastListSize(
    Pointer<Uint32> pulcbAddresses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcbAddresses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcbAddresses,
          )>()(
        ptr.ref.lpVtbl,
        pulcbAddresses,
      );

  int PutMulticastList(
    int ulcbAddresses,
    Pointer<Uint8> pAddressList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcbAddresses,
            Pointer<Uint8> pAddressList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcbAddresses,
            Pointer<Uint8> pAddressList,
          )>()(
        ptr.ref.lpVtbl,
        ulcbAddresses,
        pAddressList,
      );

  int GetMulticastList(
    Pointer<Uint32> pulcbAddresses,
    Pointer<Uint8> pAddressList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcbAddresses,
            Pointer<Uint8> pAddressList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcbAddresses,
            Pointer<Uint8> pAddressList,
          )>()(
        ptr.ref.lpVtbl,
        pulcbAddresses,
        pAddressList,
      );

  int PutMulticastMode(
    int ulModeMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulModeMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulModeMask,
          )>()(
        ptr.ref.lpVtbl,
        ulModeMask,
      );

  int GetMulticastMode(
    Pointer<Uint32> pulModeMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulModeMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulModeMask,
          )>()(
        ptr.ref.lpVtbl,
        pulModeMask,
      );
}
