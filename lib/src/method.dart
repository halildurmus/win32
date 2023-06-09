// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.dart';
import 'methodimpls.dart';
import 'mixins/customattributes_mixin.dart';
import 'mixins/genericparams_mixin.dart';
import 'mixins/supportedarchitectures_mixin.dart';
import 'moduleref.dart';
import 'parameter.dart';
import 'pinvokemap.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils/typetuple.dart';

/// A method.
class Method extends TokenObject
    with
        CustomAttributesMixin,
        GenericParamsMixin,
        SupportedArchitecturesMixin {
  /// Any implementation flags defined by the method metadata.
  int implFlags;

  /// The name of the method.
  String name;

  /// The parameters defined by the method.
  List<Parameter> parameters = <Parameter>[];
  int relativeVirtualAddress;

  /// The value returned by the method.
  late Parameter returnType;

  /// The raw signature blob as defined in §II.23.2.1 (MethodDefSig) of
  /// ECMA-335.
  Uint8List signatureBlob;

  int _attributes;
  int _parentToken;

  Method(
      super.scope,
      super.token,
      this._parentToken,
      this.name,
      this._attributes,
      this.signatureBlob,
      this.relativeVirtualAddress,
      this.implFlags) {
    _parseParameterNames();
    _parseSignatureBlob();
  }

  /// Creates a method object from a provided token.
  factory Method.fromToken(Scope scope, int token) {
    assert(TokenType.fromToken(token) == TokenType.methodDef);

    return using((Arena arena) {
      final ptkClass = arena<mdTypeDef>();
      final szMethod = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchMethod = arena<ULONG>();
      final pdwAttr = arena<DWORD>();
      final ppvSigBlob = arena<PCCOR_SIGNATURE>();
      final pcbSigBlob = arena<ULONG>();
      final pulCodeRVA = arena<ULONG>();
      final pdwImplFlags = arena<DWORD>();

      final reader = scope.reader;
      final hr = reader.getMethodProps(
          token,
          ptkClass,
          szMethod,
          stringBufferSize,
          pchMethod,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags);

      if (SUCCEEDED(hr)) {
        final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
        return Method(scope, token, ptkClass.value, szMethod.toDartString(),
            pdwAttr.value, signature, pulCodeRVA.value, pdwImplFlags.value);
      } else {
        throw WindowsException(hr);
      }
    });
  }

  @override
  String toString() {
    final params = parameters
        .map((param) => '${param.typeIdentifier} ${param.name}')
        .join(', ');
    return '${returnType.typeIdentifier} $name($params)';
  }

  /// The method's parent type.
  TypeDef get parent => scope.findTypeDefByToken(_parentToken)!;

  /// Returns information about the method's visibility / accessibility to other
  /// types.
  MemberAccess get memberAccess =>
      MemberAccess.values[_attributes & CorMethodAttr.mdMemberAccessMask];

  /// Returns true if the member is defined as part of the type rather than as a
  /// member of an instance.
  bool get isStatic =>
      _attributes & CorMethodAttr.mdStatic == CorMethodAttr.mdStatic;

  /// Returns true if the method cannot be overridden.
  bool get isFinal =>
      _attributes & CorMethodAttr.mdFinal == CorMethodAttr.mdFinal;

  /// Returns true if the method can be overridden.
  bool get isVirtual =>
      _attributes & CorMethodAttr.mdVirtual == CorMethodAttr.mdVirtual;

  /// Returns true if the method hides by name and signature, rather than just
  /// by name.
  bool get isHideBySig =>
      _attributes & CorMethodAttr.mdHideBySig == CorMethodAttr.mdHideBySig;

  /// Returns information about the vtable layout of this method.
  ///
  /// If `ReuseSlot`, the slot used for this method in the virtual table be
  /// reused. This is the default. If `NewSlot`, the method always gets a new
  /// slot in the virtual table.
  VtableLayout get vTableLayout {
    switch (_attributes & CorMethodAttr.mdVtableLayoutMask) {
      case CorMethodAttr.mdNewSlot:
        return VtableLayout.newSlot;
      case CorMethodAttr.mdReuseSlot:
      default:
        return VtableLayout.reuseSlot;
    }
  }

  /// Returns true if the method can be overridden by the same types to which it
  /// is visible.
  bool get isCheckAccessOnOverride =>
      _attributes & CorMethodAttr.mdCheckAccessOnOverride ==
      CorMethodAttr.mdCheckAccessOnOverride;

  /// Returns true if the method is not implemented.
  bool get isAbstract =>
      _attributes & CorMethodAttr.mdAbstract == CorMethodAttr.mdAbstract;

  /// Returns true if the method is special; its name describes how.
  bool get isSpecialName =>
      _attributes & CorMethodAttr.mdSpecialName == CorMethodAttr.mdSpecialName;

  /// Returns true if the method implementation is forwarded using PInvoke.
  bool get isPinvokeImpl =>
      _attributes & CorMethodAttr.mdPinvokeImpl == CorMethodAttr.mdPinvokeImpl;

  /// Returns true if the method is a managed method exported to unmanaged code.
  bool get isUnmanagedExport =>
      _attributes & CorMethodAttr.mdUnmanagedExport ==
      CorMethodAttr.mdUnmanagedExport;

  /// Returns true if the common language runtime should check the encoding of
  /// the method name.
  bool get isRTSpecialName =>
      _attributes & CorMethodAttr.mdSpecialName == CorMethodAttr.mdSpecialName;

  /// Returns the P/Invoke mapping representation for this object.
  PinvokeMap get pinvokeMap => PinvokeMap.fromToken(scope, token);

  /// Implementation features for the method.
  MethodImplementationFeatures get implFeatures =>
      MethodImplementationFeatures(implFlags);

  /// Returns true if the method is a property getter
  bool get isGetProperty => isSpecialName && name.startsWith('get_');

  /// Returns true if the method is a property setter
  bool get isSetProperty => isSpecialName && name.startsWith('put_');

  /// Returns true if the method is a property getter or setter.
  bool get isProperty => isGetProperty | isSetProperty;

  /// Returns the module that contains the method.
  ModuleRef get module => using((Arena arena) {
        final pdwMappingFlags = arena<DWORD>();
        final szImportName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
        final pchImportName = arena<ULONG>();
        final ptkImportDLL = arena<mdModuleRef>();

        final hr = reader.getPinvokeMap(token, pdwMappingFlags, szImportName,
            stringBufferSize, pchImportName, ptkImportDLL);
        if (SUCCEEDED(hr)) {
          return ModuleRef.fromToken(scope, ptkImportDLL.value);
        } else {
          throw COMException(hr);
        }
      });

  /// Returns true if the method contains generic parameters.
  bool get hasGenericParameters => signatureBlob[0] & 0x10 == 0x10;

  /// Returns flags relating to the method calling convention.
  String get callingConvention {
    final retVal = StringBuffer();
    final cc = signatureBlob[0];

    retVal.write('default ');
    if (cc & 0x05 == 0x05) retVal.write('vararg ');
    if (cc & 0x10 == 0x10) retVal.write('generic ');
    if (cc & 0x20 == 0x20) retVal.write('instance ');
    if (cc & 0x40 == 0x40) retVal.write('explicit ');

    return retVal.toString();
  }

  /// Parses the parameters and return type for this method from the
  /// [signatureBlob], which is of type `MethodDefSig` (or `PropertySig`, if the
  /// method is a property getter). This is documented in §II.23.2.1 and
  /// §II.23.2.5 respectively.
  void _parseSignatureBlob() {
    // Win32 properties are declared as such, but are represented as
    // MethodDefSig objects
    if (isGetProperty && signatureBlob[0] != 0x20) {
      _parseGetPropertySig();
    } else {
      _parseMethodDefSig();
    }
  }

  /// Parse a property from the signature blob. Properties have the following
  /// format: [type | paramCount | customMod | type | param]
  ///
  /// `PropertySig` is defined in §II.23.2.5.
  void _parseGetPropertySig() {
    // Type should begin at index 2
    final typeIdentifier =
        TypeTuple.fromSignature(signatureBlob.sublist(2), scope).typeIdentifier;
    returnType = Parameter.fromTypeIdentifier(scope, token, typeIdentifier);
  }

  /// Parses the parameters and return type for this method from the
  /// [signatureBlob], which is of type `MethodDefSig`. This is documented in
  /// §II.23.2.1.
  ///
  /// This is of format:
  ///   [callConv | genParamCount | paramCount | retType | param...]
  void _parseMethodDefSig() {
    var paramsIndex = 0;

    // Strip off the header and the paramCount. We know the number and names of
    // the parameters already; we're simply mapping them to types here.
    var blobPtr = hasGenericParameters == false ? 2 : 3;

    // Windows Runtime emits a zero-th parameter for the return type. So move
    // that to the returnType and parse a type from the signature.
    if (parameters.isNotEmpty && parameters.first.sequence == 0) {
      // Parse return type
      returnType = parameters.first;
      parameters = parameters.sublist(1);
      final returnTypeTuple =
          TypeTuple.fromSignature(signatureBlob.sublist(blobPtr), scope);
      returnType.typeIdentifier = returnTypeTuple.typeIdentifier;
      blobPtr += returnTypeTuple.offsetLength;
    } else {
      // In Win32 metadata, EnumParams does not return a zero-th parameter even
      // if there is a return type. So we create a new returnType for it.
      final returnTypeTuple =
          TypeTuple.fromSignature(signatureBlob.sublist(blobPtr), scope);
      returnType = Parameter.fromTypeIdentifier(
          scope, token, returnTypeTuple.typeIdentifier);
      blobPtr += returnTypeTuple.offsetLength;
    }

    // Parse through the params section of MethodDefSig, and map each recovered
    // type to the corresponding parameter.
    while (paramsIndex < parameters.length) {
      final runtimeType =
          TypeTuple.fromSignature(signatureBlob.sublist(blobPtr), scope);
      blobPtr += runtimeType.offsetLength;

      if (runtimeType.typeIdentifier.baseType == BaseType.simpleArrayType) {
        _parseSimpleArray(runtimeType, paramsIndex);
        paramsIndex++; // we've added two parameters here
      } else if (runtimeType.typeIdentifier.baseType ==
              BaseType.referenceTypeModifier &&
          runtimeType.typeIdentifier.typeArg?.baseType ==
              BaseType.simpleArrayType) {
        _parseSimpleArray(runtimeType, paramsIndex, isReferenceType: true);
        paramsIndex++; // we've added two parameters here
      } else {
        parameters[paramsIndex].typeIdentifier = runtimeType.typeIdentifier;
      }
      paramsIndex++;
    }
  }

  void _parseParameterNames() => using((Arena arena) {
        final phEnum = arena<HCORENUM>();
        final rParams = arena<mdParamDef>();
        final pcTokens = arena<ULONG>();

        var hr = reader.enumParams(phEnum, token, rParams, 1, pcTokens);
        while (hr == S_OK) {
          final parameterToken = rParams.value;

          parameters.add(Parameter.fromToken(scope, parameterToken));
          hr = reader.enumParams(phEnum, token, rParams, 1, pcTokens);
        }
        reader.closeEnum(phEnum.value);
      });

  // Various projections do smart things to mask this into a single array
  // value. We're not that clever yet, so we project it in its raw state, which
  // means a little work here to ensure that it comes out right.
  void _parseSimpleArray(TypeTuple typeTuple, int paramsIndex,
      {bool isReferenceType = false}) {
    final paramName = parameters[paramsIndex].name;
    parameters[paramsIndex].name = '__${paramName}Size';

    if (isReferenceType) {
      parameters[paramsIndex].typeIdentifier = parameters[paramsIndex]
          .typeIdentifier
          .copyWith(
              baseType: BaseType.pointerTypeModifier,
              typeArg: const TypeIdentifier(BaseType.uint32Type));
    } else {
      parameters[paramsIndex].typeIdentifier =
          const TypeIdentifier(BaseType.uint32Type);
    }

    parameters.insert(paramsIndex + 1, Parameter.fromVoid(scope, token));
    parameters[paramsIndex + 1].name = paramName;
    parameters[paramsIndex + 1].typeIdentifier = typeTuple.typeIdentifier;
  }
}
