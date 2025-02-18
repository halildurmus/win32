// iwbemhiperfenum.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemHiPerfEnum = '{2705c288-79ae-11d2-b348-00105a1f8177}';

/// The IWbemHiPerfEnum interface is used in refresher operations to provide
/// rapid access to enumerations of instance objects. WMI provides an
/// implementation of this interface, which it passes to providers when
/// `IWbemHiPerfProvider::CreateRefreshableEnum` is called, and it returns
/// to clients when `IWbemConfigureRefresher::AddEnum` is called.
///
/// {@category com}
class IWbemHiPerfEnum extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWbemHiPerfEnum(super.ptr);

  factory IWbemHiPerfEnum.from(IUnknown interface) =>
      IWbemHiPerfEnum(interface.toInterface(IID_IWbemHiPerfEnum));

  int addObjects(
    int lFlags,
    int uNumObjects,
    Pointer<Int32> apIds,
    Pointer<Pointer<COMObject>> apObj,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lFlags,
              Uint32 uNumObjects,
              Pointer<Int32> apIds,
              Pointer<Pointer<COMObject>> apObj,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lFlags,
          int uNumObjects,
          Pointer<Int32> apIds,
          Pointer<Pointer<COMObject>> apObj,
        )
      >()(ptr.ref.lpVtbl, lFlags, uNumObjects, apIds, apObj);

  int removeObjects(int lFlags, int uNumObjects, Pointer<Int32> apIds) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 lFlags,
                  Uint32 uNumObjects,
                  Pointer<Int32> apIds,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int lFlags,
              int uNumObjects,
              Pointer<Int32> apIds,
            )
          >()(ptr.ref.lpVtbl, lFlags, uNumObjects, apIds);

  int getObjects(
    int lFlags,
    int uNumObjects,
    Pointer<Pointer<COMObject>> apObj,
    Pointer<Uint32> puReturned,
  ) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lFlags,
              Uint32 uNumObjects,
              Pointer<Pointer<COMObject>> apObj,
              Pointer<Uint32> puReturned,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lFlags,
          int uNumObjects,
          Pointer<Pointer<COMObject>> apObj,
          Pointer<Uint32> puReturned,
        )
      >()(ptr.ref.lpVtbl, lFlags, uNumObjects, apObj, puReturned);

  int removeAll(int lFlags) => (ptr.ref.vtable + 6)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 lFlags)>>>()
      .value
      .asFunction<int Function(Pointer, int lFlags)>()(ptr.ref.lpVtbl, lFlags);
}
