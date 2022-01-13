// IWbemPropertyProvider.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IWbemPropertyProvider = '{CE61E841-65BC-11D0-B6BD-00AA003240C7}';

/// {@category Interface}
/// {@category com}
class IWbemPropertyProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWbemPropertyProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetProperty(
    int lFlags,
    Pointer<Utf16> strLocale,
    Pointer<Utf16> strClassMapping,
    Pointer<Utf16> strInstMapping,
    Pointer<Utf16> strPropMapping,
    Pointer<VARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> strLocale,
            Pointer<Utf16> strClassMapping,
            Pointer<Utf16> strInstMapping,
            Pointer<Utf16> strPropMapping,
            Pointer<VARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> strLocale,
            Pointer<Utf16> strClassMapping,
            Pointer<Utf16> strInstMapping,
            Pointer<Utf16> strPropMapping,
            Pointer<VARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        strLocale,
        strClassMapping,
        strInstMapping,
        strPropMapping,
        pvValue,
      );

  int PutProperty(
    int lFlags,
    Pointer<Utf16> strLocale,
    Pointer<Utf16> strClassMapping,
    Pointer<Utf16> strInstMapping,
    Pointer<Utf16> strPropMapping,
    Pointer<VARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> strLocale,
            Pointer<Utf16> strClassMapping,
            Pointer<Utf16> strInstMapping,
            Pointer<Utf16> strPropMapping,
            Pointer<VARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> strLocale,
            Pointer<Utf16> strClassMapping,
            Pointer<Utf16> strInstMapping,
            Pointer<Utf16> strPropMapping,
            Pointer<VARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        strLocale,
        strClassMapping,
        strInstMapping,
        strPropMapping,
        pvValue,
      );
}
