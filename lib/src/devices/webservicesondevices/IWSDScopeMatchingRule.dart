// IWSDScopeMatchingRule.dart

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
const IID_IWSDScopeMatchingRule = '{FCAFE424-FEF5-481A-BD9F-33CE0574256F}';

/// {@category Interface}
/// {@category com}
class IWSDScopeMatchingRule extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWSDScopeMatchingRule(Pointer<COMObject> ptr) : super(ptr);

  int GetScopeRule(
    Pointer<Pointer<Utf16>> ppszScopeMatchingRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszScopeMatchingRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszScopeMatchingRule,
          )>()(
        ptr.ref.lpVtbl,
        ppszScopeMatchingRule,
      );

  int MatchScopes(
    Pointer<Utf16> pszScope1,
    Pointer<Utf16> pszScope2,
    Pointer<Int32> pfMatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszScope1,
            Pointer<Utf16> pszScope2,
            Pointer<Int32> pfMatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszScope1,
            Pointer<Utf16> pszScope2,
            Pointer<Int32> pfMatch,
          )>()(
        ptr.ref.lpVtbl,
        pszScope1,
        pszScope2,
        pfMatch,
      );
}
