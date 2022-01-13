// IGraphBuilder.dart

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

import '../../media/directshow/IFilterGraph.dart';
import '../../media/directshow/IPin.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IBaseFilter.dart';

/// @nodoc
const IID_IGraphBuilder = '{56A868A9-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IGraphBuilder extends IFilterGraph {
  // vtable begins at 11, is 7 entries long.
  IGraphBuilder(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<COMObject> ppinOut,
    Pointer<COMObject> ppinIn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> ppinIn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> ppinIn,
          )>()(
        ptr.ref.lpVtbl,
        ppinOut,
        ppinIn,
      );

  int Render(
    Pointer<COMObject> ppinOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppinOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppinOut,
          )>()(
        ptr.ref.lpVtbl,
        ppinOut,
      );

  int RenderFile(
    Pointer<Utf16> lpcwstrFile,
    Pointer<Utf16> lpcwstrPlayList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpcwstrFile,
            Pointer<Utf16> lpcwstrPlayList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpcwstrFile,
            Pointer<Utf16> lpcwstrPlayList,
          )>()(
        ptr.ref.lpVtbl,
        lpcwstrFile,
        lpcwstrPlayList,
      );

  int AddSourceFilter(
    Pointer<Utf16> lpcwstrFileName,
    Pointer<Utf16> lpcwstrFilterName,
    Pointer<Pointer<COMObject>> ppFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpcwstrFileName,
            Pointer<Utf16> lpcwstrFilterName,
            Pointer<Pointer<COMObject>> ppFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpcwstrFileName,
            Pointer<Utf16> lpcwstrFilterName,
            Pointer<Pointer<COMObject>> ppFilter,
          )>()(
        ptr.ref.lpVtbl,
        lpcwstrFileName,
        lpcwstrFilterName,
        ppFilter,
      );

  int SetLogFile(
    int hFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hFile,
          )>()(
        ptr.ref.lpVtbl,
        hFile,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ShouldOperationContinue() => ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
