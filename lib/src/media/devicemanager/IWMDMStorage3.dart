// IWMDMStorage3.dart

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

import '../../media/devicemanager/IWMDMStorage2.dart';
import '../../media/devicemanager/IWMDMMetaData.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMStorage3 = '{97717EEA-926A-464E-96A4-247B0216026E}';

/// {@category Interface}
/// {@category com}
class IWMDMStorage3 extends IWMDMStorage2 {
  // vtable begins at 15, is 4 entries long.
  IWMDMStorage3(Pointer<COMObject> ptr) : super(ptr);

  int GetMetadata(
    Pointer<Pointer<COMObject>> ppMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppMetadata,
      );

  int SetMetadata(
    Pointer<COMObject> pMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pMetadata,
      );

  int CreateEmptyMetadataObject(
    Pointer<Pointer<COMObject>> ppMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppMetadata,
      );

  int SetEnumPreference(
    Pointer<Int32> pMode,
    int nViews,
    Pointer<WMDMMetadataView> pViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMode,
            Uint32 nViews,
            Pointer<WMDMMetadataView> pViews,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMode,
            int nViews,
            Pointer<WMDMMetadataView> pViews,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
        nViews,
        pViews,
      );
}
