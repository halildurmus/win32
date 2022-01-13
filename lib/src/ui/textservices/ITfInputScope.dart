// ITfInputScope.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfInputScope = '{FDE1EAEE-6924-4CDF-91E7-DA38CFF5559D}';

/// {@category Interface}
/// {@category com}
class ITfInputScope extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITfInputScope(Pointer<COMObject> ptr) : super(ptr);

  int GetInputScopes(
    Pointer<Pointer<Int32>> pprgInputScopes,
    Pointer<Uint32> pcCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Int32>> pprgInputScopes,
            Pointer<Uint32> pcCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Int32>> pprgInputScopes,
            Pointer<Uint32> pcCount,
          )>()(
        ptr.ref.lpVtbl,
        pprgInputScopes,
        pcCount,
      );

  int GetPhrase(
    Pointer<Pointer<Pointer<Utf16>>> ppbstrPhrases,
    Pointer<Uint32> pcCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<Utf16>>> ppbstrPhrases,
            Pointer<Uint32> pcCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<Utf16>>> ppbstrPhrases,
            Pointer<Uint32> pcCount,
          )>()(
        ptr.ref.lpVtbl,
        ppbstrPhrases,
        pcCount,
      );

  int GetRegularExpression(
    Pointer<Pointer<Utf16>> pbstrRegExp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrRegExp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrRegExp,
          )>()(
        ptr.ref.lpVtbl,
        pbstrRegExp,
      );

  int GetSRGS(
    Pointer<Pointer<Utf16>> pbstrSRGS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSRGS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSRGS,
          )>()(
        ptr.ref.lpVtbl,
        pbstrSRGS,
      );

  int GetXML(
    Pointer<Pointer<Utf16>> pbstrXML,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrXML,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrXML,
          )>()(
        ptr.ref.lpVtbl,
        pbstrXML,
      );
}
