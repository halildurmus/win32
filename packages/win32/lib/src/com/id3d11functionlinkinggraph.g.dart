// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'id3d11linkingnode.g.dart';
import 'id3d11module.g.dart';
import 'id3d11moduleinstance.g.dart';
import 'id3dblob.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11FunctionLinkingGraph = GUID.fromComponents(
  0x54133220,
  0x1ce8,
  0x43d3,
  Uint8List.fromList(const [0x82, 0x36, 0x98, 0x55, 0xc5, 0xce, 0xec, 0xff]),
);

/// A function-linking-graph interface is used for constructing shaders that
/// consist of a sequence of precompiled function calls that pass values to each
/// other.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nn-d3d11shader-id3d11functionlinkinggraph>.
///
/// {@category com}
class ID3D11FunctionLinkingGraph extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11FunctionLinkingGraph] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11FunctionLinkingGraph] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3D11FunctionLinkingGraph(super.ptr)
    : _vtable = ptr.value.cast<ID3D11FunctionLinkingGraphVtbl>().ref;

  /// Creates a new instance of [ID3D11FunctionLinkingGraph] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11FunctionLinkingGraph] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11FunctionLinkingGraph.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11FunctionLinkingGraphVtbl _vtable;
  late final _CreateModuleInstanceFn =
      _vtable.CreateModuleInstance.asFunction<
        int Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _SetInputSignatureFn =
      _vtable.SetInputSignature.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_PARAMETER_DESC>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _SetOutputSignatureFn =
      _vtable.SetOutputSignature.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_PARAMETER_DESC>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CallFunctionFn =
      _vtable.CallFunction.asFunction<
        int Function(
          VTablePointer,
          Pointer<Utf8>,
          VTablePointer,
          Pointer<Utf8>,
          Pointer<VTablePointer>,
        )
      >();
  late final _PassValueFn =
      _vtable.PassValue.asFunction<
        int Function(VTablePointer, VTablePointer, int, VTablePointer, int)
      >();
  late final _PassValueWithSwizzleFn =
      _vtable.PassValueWithSwizzle.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Utf8>,
          VTablePointer,
          int,
          Pointer<Utf8>,
        )
      >();
  late final _GetLastErrorFn =
      _vtable.GetLastError.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GenerateHlslFn =
      _vtable.GenerateHlsl.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();

  /// Initializes a shader module from the function-linking-graph object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-createmoduleinstance>.
  @pragma('vm:prefer-inline')
  void createModuleInstance(
    Pointer<VTablePointer> ppModuleInstance,
    Pointer<VTablePointer>? ppErrorBuffer,
  ) {
    final hr$ = HRESULT(
      _CreateModuleInstanceFn(ptr, ppModuleInstance, ppErrorBuffer ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the input signature of the function-linking-graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-setinputsignature>.
  ID3D11LinkingNode? setInputSignature(
    Pointer<D3D11_PARAMETER_DESC> pInputParameters,
    int cInputParameters,
  ) {
    final ppInputNode = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _SetInputSignatureFn(
        ptr,
        pInputParameters,
        cInputParameters,
        ppInputNode,
      ),
    );
    if (hr$.isError) {
      free(ppInputNode);
      throw WindowsException(hr$);
    }
    final result$ = ppInputNode.value;
    free(ppInputNode);
    if (result$.isNull) return null;
    return ID3D11LinkingNode(result$);
  }

  /// Sets the output signature of the function-linking-graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-setoutputsignature>.
  ID3D11LinkingNode? setOutputSignature(
    Pointer<D3D11_PARAMETER_DESC> pOutputParameters,
    int cOutputParameters,
  ) {
    final ppOutputNode = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _SetOutputSignatureFn(
        ptr,
        pOutputParameters,
        cOutputParameters,
        ppOutputNode,
      ),
    );
    if (hr$.isError) {
      free(ppOutputNode);
      throw WindowsException(hr$);
    }
    final result$ = ppOutputNode.value;
    free(ppOutputNode);
    if (result$.isNull) return null;
    return ID3D11LinkingNode(result$);
  }

  /// Creates a call-function linking node to use in the function-linking-graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-callfunction>.
  ID3D11LinkingNode? callFunction(
    PCSTR? pModuleInstanceNamespace,
    ID3D11Module? pModuleWithFunctionPrototype,
    PCSTR pFunctionName,
  ) {
    final ppCallNode = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CallFunctionFn(
        ptr,
        pModuleInstanceNamespace ?? nullptr,
        pModuleWithFunctionPrototype?.ptr ?? nullptr,
        pFunctionName,
        ppCallNode,
      ),
    );
    if (hr$.isError) {
      free(ppCallNode);
      throw WindowsException(hr$);
    }
    final result$ = ppCallNode.value;
    free(ppCallNode);
    if (result$.isNull) return null;
    return ID3D11LinkingNode(result$);
  }

  /// Passes a value from a source linking node to a destination linking node.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-passvalue>.
  @pragma('vm:prefer-inline')
  void passValue(
    ID3D11LinkingNode? pSrcNode,
    int srcParameterIndex,
    ID3D11LinkingNode? pDstNode,
    int dstParameterIndex,
  ) {
    final hr$ = HRESULT(
      _PassValueFn(
        ptr,
        pSrcNode?.ptr ?? nullptr,
        srcParameterIndex,
        pDstNode?.ptr ?? nullptr,
        dstParameterIndex,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Passes a value with swizzle from a source linking node to a destination
  /// linking node.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-passvaluewithswizzle>.
  @pragma('vm:prefer-inline')
  void passValueWithSwizzle(
    ID3D11LinkingNode? pSrcNode,
    int srcParameterIndex,
    PCSTR pSrcSwizzle,
    ID3D11LinkingNode? pDstNode,
    int dstParameterIndex,
    PCSTR pDstSwizzle,
  ) {
    final hr$ = HRESULT(
      _PassValueWithSwizzleFn(
        ptr,
        pSrcNode?.ptr ?? nullptr,
        srcParameterIndex,
        pSrcSwizzle,
        pDstNode?.ptr ?? nullptr,
        dstParameterIndex,
        pDstSwizzle,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the error from the last function call of the function-linking-graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-getlasterror>.
  @pragma('vm:prefer-inline')
  void getLastError(Pointer<VTablePointer>? ppErrorBuffer) {
    final hr$ = HRESULT(_GetLastErrorFn(ptr, ppErrorBuffer ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Generates Microsoft High Level Shader Language (HLSL) shader code that
  /// represents the function-linking-graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shader/nf-d3d11shader-id3d11functionlinkinggraph-generatehlsl>.
  ID3DBlob? generateHlsl(int uFlags) {
    final ppBuffer = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GenerateHlslFn(ptr, uFlags, ppBuffer));
    if (hr$.isError) {
      free(ppBuffer);
      throw WindowsException(hr$);
    }
    final result$ = ppBuffer.value;
    free(ppBuffer);
    if (result$.isNull) return null;
    return ID3DBlob(result$);
  }

  @override
  String toString() => 'ID3D11FunctionLinkingGraph(ptr: $ptr)';
}

/// @nodoc
base class ID3D11FunctionLinkingGraphVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppModuleInstance,
        Pointer<VTablePointer> ppErrorBuffer,
      )
    >
  >
  CreateModuleInstance;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_PARAMETER_DESC> pInputParameters,
        Uint32 cInputParameters,
        Pointer<VTablePointer> ppInputNode,
      )
    >
  >
  SetInputSignature;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_PARAMETER_DESC> pOutputParameters,
        Uint32 cOutputParameters,
        Pointer<VTablePointer> ppOutputNode,
      )
    >
  >
  SetOutputSignature;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf8> pModuleInstanceNamespace,
        VTablePointer pModuleWithFunctionPrototype,
        Pointer<Utf8> pFunctionName,
        Pointer<VTablePointer> ppCallNode,
      )
    >
  >
  CallFunction;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pSrcNode,
        Int32 srcParameterIndex,
        VTablePointer pDstNode,
        Int32 dstParameterIndex,
      )
    >
  >
  PassValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pSrcNode,
        Int32 srcParameterIndex,
        Pointer<Utf8> pSrcSwizzle,
        VTablePointer pDstNode,
        Int32 dstParameterIndex,
        Pointer<Utf8> pDstSwizzle,
      )
    >
  >
  PassValueWithSwizzle;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppErrorBuffer)
    >
  >
  GetLastError;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 uFlags,
        Pointer<VTablePointer> ppBuffer,
      )
    >
  >
  GenerateHlsl;
}

@internal
final class ID3D11FunctionLinkingGraphCompanion
    extends ComCompanion<ID3D11FunctionLinkingGraph> {
  const ID3D11FunctionLinkingGraphCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11FunctionLinkingGraph Function(VTablePointer) get fromPointer =>
      ID3D11FunctionLinkingGraph.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11FunctionLinkingGraph;
}
