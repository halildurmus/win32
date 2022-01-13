// ID3D11UnorderedAccessView1.dart

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

import '../../graphics/direct3d11/ID3D11UnorderedAccessView.dart';
import '../../graphics/direct3d11/structs.g.dart';

/// @nodoc
const IID_ID3D11UnorderedAccessView1 = '{7B3B6153-A886-4544-AB37-6537C8500403}';

/// {@category Interface}
/// {@category com}
class ID3D11UnorderedAccessView1 extends ID3D11UnorderedAccessView {
  // vtable begins at 9, is 1 entries long.
  ID3D11UnorderedAccessView1(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc1(
    Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1> pDesc1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1> pDesc1,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1> pDesc1,
          )>()(
        ptr.ref.lpVtbl,
        pDesc1,
      );
}
