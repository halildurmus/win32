// ID3D11FunctionLinkingGraph.dart

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
import '../../graphics/direct3d11/ID3D11ModuleInstance.dart';
import '../../graphics/direct3d/ID3DBlob.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11LinkingNode.dart';
import '../../graphics/direct3d11/ID3D11Module.dart';

/// @nodoc
const IID_ID3D11FunctionLinkingGraph = '{54133220-1CE8-43D3-8236-9855C5CEECFF}';

/// {@category Interface}
/// {@category com}
class ID3D11FunctionLinkingGraph extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ID3D11FunctionLinkingGraph(Pointer<COMObject> ptr) : super(ptr);

  int CreateModuleInstance(
    Pointer<Pointer<COMObject>> ppModuleInstance,
    Pointer<Pointer<COMObject>> ppErrorBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppModuleInstance,
            Pointer<Pointer<COMObject>> ppErrorBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppModuleInstance,
            Pointer<Pointer<COMObject>> ppErrorBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppModuleInstance,
        ppErrorBuffer,
      );

  int SetInputSignature(
    Pointer<D3D11_PARAMETER_DESC> pInputParameters,
    int cInputParameters,
    Pointer<Pointer<COMObject>> ppInputNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_PARAMETER_DESC> pInputParameters,
            Uint32 cInputParameters,
            Pointer<Pointer<COMObject>> ppInputNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_PARAMETER_DESC> pInputParameters,
            int cInputParameters,
            Pointer<Pointer<COMObject>> ppInputNode,
          )>()(
        ptr.ref.lpVtbl,
        pInputParameters,
        cInputParameters,
        ppInputNode,
      );

  int SetOutputSignature(
    Pointer<D3D11_PARAMETER_DESC> pOutputParameters,
    int cOutputParameters,
    Pointer<Pointer<COMObject>> ppOutputNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_PARAMETER_DESC> pOutputParameters,
            Uint32 cOutputParameters,
            Pointer<Pointer<COMObject>> ppOutputNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_PARAMETER_DESC> pOutputParameters,
            int cOutputParameters,
            Pointer<Pointer<COMObject>> ppOutputNode,
          )>()(
        ptr.ref.lpVtbl,
        pOutputParameters,
        cOutputParameters,
        ppOutputNode,
      );

  int CallFunction(
    Pointer<Utf8> pModuleInstanceNamespace,
    Pointer<COMObject> pModuleWithFunctionPrototype,
    Pointer<Utf8> pFunctionName,
    Pointer<Pointer<COMObject>> ppCallNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pModuleInstanceNamespace,
            Pointer<COMObject> pModuleWithFunctionPrototype,
            Pointer<Utf8> pFunctionName,
            Pointer<Pointer<COMObject>> ppCallNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pModuleInstanceNamespace,
            Pointer<COMObject> pModuleWithFunctionPrototype,
            Pointer<Utf8> pFunctionName,
            Pointer<Pointer<COMObject>> ppCallNode,
          )>()(
        ptr.ref.lpVtbl,
        pModuleInstanceNamespace,
        pModuleWithFunctionPrototype,
        pFunctionName,
        ppCallNode,
      );

  int PassValue(
    Pointer<COMObject> pSrcNode,
    int SrcParameterIndex,
    Pointer<COMObject> pDstNode,
    int DstParameterIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSrcNode,
            Int32 SrcParameterIndex,
            Pointer<COMObject> pDstNode,
            Int32 DstParameterIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSrcNode,
            int SrcParameterIndex,
            Pointer<COMObject> pDstNode,
            int DstParameterIndex,
          )>()(
        ptr.ref.lpVtbl,
        pSrcNode,
        SrcParameterIndex,
        pDstNode,
        DstParameterIndex,
      );

  int PassValueWithSwizzle(
    Pointer<COMObject> pSrcNode,
    int SrcParameterIndex,
    Pointer<Utf8> pSrcSwizzle,
    Pointer<COMObject> pDstNode,
    int DstParameterIndex,
    Pointer<Utf8> pDstSwizzle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSrcNode,
            Int32 SrcParameterIndex,
            Pointer<Utf8> pSrcSwizzle,
            Pointer<COMObject> pDstNode,
            Int32 DstParameterIndex,
            Pointer<Utf8> pDstSwizzle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSrcNode,
            int SrcParameterIndex,
            Pointer<Utf8> pSrcSwizzle,
            Pointer<COMObject> pDstNode,
            int DstParameterIndex,
            Pointer<Utf8> pDstSwizzle,
          )>()(
        ptr.ref.lpVtbl,
        pSrcNode,
        SrcParameterIndex,
        pSrcSwizzle,
        pDstNode,
        DstParameterIndex,
        pDstSwizzle,
      );

  int GetLastError(
    Pointer<Pointer<COMObject>> ppErrorBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppErrorBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppErrorBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppErrorBuffer,
      );

  int GenerateHlsl(
    int uFlags,
    Pointer<Pointer<COMObject>> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
        ppBuffer,
      );
}
