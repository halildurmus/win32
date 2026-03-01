import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart';

import '../docs/api_details.dart';
import '../extensions/collection.dart';
import '../extensions/field.dart';
import '../extensions/method_def.dart';
import '../extensions/module_ref.dart';
import '../extensions/param.dart';
import '../extensions/string.dart';
import '../extensions/type_def.dart';
import '../interop_type.dart';
import '../logger.dart';
import '../projection.dart';
import '../windows_metadata.dart';
import 'parameter.dart';

/// Represents a Dart projection for a Win32 function defined by a [MethodDef].
///
/// This class generates a Dart wrapper around a Win32 function, allowing it to
/// be called from Dart code. It also generates the necessary FFI lookup code,
/// which maps the function's native signature to its Dart equivalent. The
/// lookup is cached in a final field to avoid repeated lookups, improving
/// performance.
base class FunctionProjection extends Projection with ProjectionMixin {
  /// Creates an instance of this class for a Win32 [method].
  FunctionProjection(this.method, {super.formatCode})
    : name = method.nameWithoutEncoding.safeTypeName,
      originalName = method.name,
      wrapperName = method.supportsLastError
          ? '${method.name}_Wrapper'
          : method.nameWithoutEncoding.safeTypeName.privatize(),
      hint = method.hint,
      originalReturnType = method.returnType;

  /// The metadata associated with the function.
  final MethodDef method;

  /// The name of the function converted to a legal Dart type name.
  final String name;

  /// The original name of the function.
  final String originalName;

  /// The wrapper name for the function.
  ///
  /// If this function supports `SetLastError` mechanism, the wrapper name is
  /// the original function name appended with `_Wrapper` (e.g.,
  /// `CredReadW_Wrapper`). Otherwise, it is the privatized version of the
  /// [name] (e.g., `_CredFree`).
  final String wrapperName;

  /// Provides a hint about how the return value of the method should be
  /// interpreted.
  final ReturnHint hint;

  /// The original return type of the method.
  final InteropType originalReturnType;

  /// The Dartdoc category for a given library module name.
  String? get category => switch (library) {
    'api_ms_win_core_apiquery_l2_1_0' => 'onecore',
    'api_ms_win_core_comm_l1_1_1' => 'onecore',
    'api_ms_win_core_comm_l1_1_2' => 'onecore',
    'api_ms_win_core_handle_l1_1_0' => 'kernel32',
    'api_ms_win_core_sysinfo_l1_2_3' => 'onecore',
    'api_ms_win_core_winrt_error_l1_1_0' => 'winrt',
    'api_ms_win_core_winrt_l1_1_0' => 'winrt',
    'api_ms_win_core_winrt_string_l1_1_0' => 'winrt',
    'api_ms_win_ro_typeresolution_l1_1_0' => 'winrt',
    'api_ms_win_ro_typeresolution_l1_1_1' => 'winrt',
    'api_ms_win_service_core_l1_1_3' => 'onecore',
    'api_ms_win_service_core_l1_1_4' => 'onecore',
    'api_ms_win_service_core_l1_1_5' => 'onecore',
    'api_ms_win_shcore_scaling_l1_1_1' => 'shcore',
    'api_ms_win_wsl_api_l1_1_0' => 'wslapi',
    'scarddlg' => 'winscard',
    'xinput1_4' => 'xinput',
    'ws2_32' => 'winsock',
    _ => library,
  };

  /// A legal Dart identifier based on the Win32 module name.
  ///
  /// Dart identifiers cannot match certain patterns found in Win32 module
  /// names.
  ///
  /// For example, the Win32 module name `api-ms-win-wsl-api-l1-1-0.dll` becomes
  /// `api_ms_win_wsl_api_l1_1_0`.
  String get library => method.module?.safeName ?? '';

  /// The argument list for the function body (e.g.,
  /// `[string1 ?? 0, string2 ?? 0, result]`).
  List<cb.Expression> get arguments =>
      parameters.map((p) => p.argument).toFixedList();

  cb.Expression get ffiCall => cb.refer(wrapperName).call(arguments);

  /// Whether the return type of the method is _nullable_.
  bool get isNullable =>
      (hint == .returnValue && originalReturnType.isInterface) ||
      (hint == .resultValue && parameters.last.type.deref().isInterface);

  /// The list of projected parameters for the method.
  List<ParameterProjection> get parameters =>
      method.parameters.map(ParameterProjection.new).toFixedList();

  /// The list of Dart parameters for the method.
  List<cb.Reference> get dartParameters =>
      parameters.map((p) => p.dartProjection).toFixedList();

  /// The function prototype for the Dart method.
  cb.FunctionType get dartPrototype =>
      _buildPrototype(originalReturnType.dartType, dartParameters);

  /// The list of native parameters for the method.
  List<cb.Reference> get nativeParameters =>
      parameters.map((p) => p.nativeProjection).toFixedList();

  /// The function prototype for the native method.
  cb.FunctionType get nativePrototype =>
      _buildPrototype(originalReturnType.ffiType, nativeParameters);

  /// Builds a function prototype for Dart or native methods.
  ///
  /// This is used to construct the function signature, specifying the return
  /// type and the parameter list.
  cb.FunctionType _buildPrototype(
    String returnType,
    List<cb.Reference> parameters,
  ) => .new(
    (b) => b
      ..returnType = cb.refer(returnType)
      ..requiredParameters.addAll(parameters),
  );

  /// The parameters exposed by the function, excluding reserved ones. (e.g.,
  /// `[int? string1, int? string2, Pointer<Int32> result]`).
  List<ParameterProjection> get methodParameters {
    final excludedIndices = <int>{};

    switch (hint) {
      case .query:
        final (guid: _, :guidIdx, object: _, :objectIdx) = method.isQuery!;
        // Exclude the two parameters ('Guid* riid' and 'void** ppv').
        excludedIndices.addAll([guidIdx, objectIdx]);

      case .queryOptional:
        final (guid: _, :guidIdx, object: _, :objectIdx) = method.isQuery!;
        // Exclude the guid parameter ('Guid* riid').
        excludedIndices.addAll([guidIdx]);

      case .resultValue:
        // Exclude the last parameter.
        excludedIndices.add(parameters.length - 1);

      default:
    }

    return parameters.indexed
        .where((indexedParam) {
          final (idx, p) = indexedParam;
          // Exclude reserved parameters and the ones specified in
          // excludedIndices.
          return !excludedIndices.contains(idx) && !p.parameter.isReserved;
        })
        .map((indexedParam) => indexedParam.$2)
        .toFixedList();
  }

  /// The API documentation for the method, if available.
  ApiDetails? get apiDetails => WindowsMetadata.docs.documentation(method);

  @override
  cb.Library generate() {
    logger.finest('Generating $debugName...');
    return .new(
      (b) => b.body.addAll([
        generateMethod(),
        if (!method.supportsLastError) generateNativeFunction(),
      ]),
    );
  }

  cb.Method generateNativeFunction() => .new(
    (b) => b
      ..annotations.add(
        cb
            .refer('Native')
            .call(
              const [],
              {
                'symbol': cb.literalString(originalName),
                if (method.isLeaf) 'isLeaf': cb.literalTrue,
              },
              [nativePrototype],
            ),
      )
      ..external = true
      ..returns = cb.refer(originalReturnType.dartType)
      ..name = name.privatize()
      ..requiredParameters.addAll(
        parameters.map(
          (p) => .new(
            (b) => b
              ..type = p.dartProjection
              ..name = p.name,
          ),
        ),
      ),
  );

  /// The return type of the method.
  cb.Reference get returnType {
    final typeReference = switch (hint) {
      .none || .returnValue => cb.refer(
        // If the return type is an interface, return the interface type as a
        // nullable type.
        originalReturnType.isInterface
            ? originalReturnType.publicType.nullable()
            : originalReturnType.publicType,
      ),
      .returnStruct => cb.refer(originalReturnType.publicType),
      .query => cb.refer('T'),
      .queryOptional || .resultVoid || .returnVoid => cb.refer('void'),
      .resultValue => switch (parameters.last.type) {
        // If the type is a pointer to a struct (but not a wrapper struct), don't
        // dereference it (e.g., return `Pointer<GUID>` instead of `GUID`).
        // Most Win32 APIs takes structs parameters by reference, so returning the
        // struct directly would make things harder for users. They’d need to
        // allocate memory and copy the struct into it every time they call the
        // function (which is inefficient). Keeping the pointer makes the API
        // easier to use and avoids that hassle.
        final t when t.deref().isStruct && !t.deref().isWrapperStruct =>
          cb.refer(t.publicType),
        final t =>
          // If the type is a pointer to an interface, dereference it and return
          // the interface type as a nullable type.
          t.deref().isInterface
              ? cb.refer(t.deref().publicType.nullable())
              : cb.refer(t.deref().publicType),
      },
      .returnBoolean => cb.refer('bool'),
    };

    if (method.supportsLastError) {
      if (originalReturnType.dartType == 'void') return cb.refer('WIN32_ERROR');
      return cb.refer('Win32Result<${typeReference.symbol}>');
    }

    return typeReference;
  }

  /// Whether the method should be annotated with `@pragma('vm:prefer-inline')`.
  bool get canBeInlined {
    if (method.supportsLastError && originalReturnType.dartType != 'void') {
      return false;
    }
    return switch (hint) {
      // Simple cases where inlining is preferred.
      .none ||
      .resultVoid ||
      .returnBoolean ||
      .returnStruct ||
      .returnValue ||
      .returnVoid => true,

      // More complex cases where inlining is avoided.
      .query || .queryOptional || .resultValue => false,
    };
  }

  String get win32ResultType {
    if (originalReturnType.isPointer) return 'ptr';

    if (originalReturnType case TypeDefType(
      typeDef: TypeDef(
        category: .struct,
        fields: [Field(type: InteropType(:final isPointer))],
        isWrapperStruct: true,
      ),
    )) {
      return isPointer ? 'ptr' : 'i64';
    }

    if (originalReturnType case TypeDefType(
      typeDef: TypeDef(category: .struct, isWrapperStruct: false),
    )) {
      return originalReturnType.cType.toLowerCase();
    }

    return switch (originalReturnType.ffiType) {
      'Pointer' || 'FARPROC' || 'PROC' || 'HSTRING' => 'ptr',
      'Int8' => 'i8',
      'Int16' => 'i16',
      'Int32' || 'BOOL' => 'i32',
      'Int64' || 'IntPtr' => 'i64',
      'Uint8' || 'BOOLEAN' => 'u8',
      'Uint16' => 'u16',
      'Uint32' => 'u32',
      'Uint64' => 'u64',
      _ => throw UnimplementedError(
        'Win32Result type not implemented for '
        '${originalReturnType.ffiType}',
      ),
    };
  }

  cb.Method generateMethod() => .new(
    (b) => b
      ..docs.addAll(
        generateApiDocs(
          apiDetails,
          additionalDocs: [
            if (hint.isQuery || hint.isQueryOptional) ...[
              'This method uses the [ComInterface.type] method to '
                  'retrieve metadata about the target interface defined '
                  'by [T], including its IID (Interface ID) and '
                  'instantiation logic.',
              'All COM interfaces provided by this package are '
                  'pre-registered. Custom COM interfaces must be '
                  'registered manually using the [ComInterface.register] '
                  'method before calling this method.',
            ],
            if (hint.isQuery ||
                hint.isQueryOptional ||
                hint.isResultValue ||
                hint.isResultVoid)
              'Throws a [WindowsException] on failure.',
          ],
          category: category,
          row: method,
        ),
      )
      ..annotations.addAll([if (canBeInlined) generatePreferInlineAnnotation()])
      ..returns = returnType
      ..name = name
      ..types.addAll([
        if (hint.isQuery || hint.isQueryOptional)
          cb.TypeReference(
            (b) => b
              ..symbol = 'T'
              ..bound = cb.refer('IUnknown'),
          ),
      ])
      ..requiredParameters.addAll(methodParameters.map((p) => p.generate()))
      ..lambda =
          (!method.supportsLastError || returnType.symbol == 'WIN32_ERROR') &&
          !isNullable &&
          hint != .query &&
          hint != .queryOptional &&
          hint != .resultValue &&
          hint != .resultVoid
      ..body = generateFunctionBody(),
  );

  cb.Code generateFunctionBody() => switch (hint) {
    .none ||
    .returnStruct ||
    .returnValue ||
    .returnVoid => _generateDefaultFunctionBody(),
    .query => _generateQueryFunctionBody(),
    .queryOptional => _generateQueryOptionalFunctionBody(),
    .resultValue => _generateResultValueFunctionBody(),
    .resultVoid => _generateResultVoidFunctionBody(),
    .returnBoolean => _generateReturnBooleanFunctionBody(),
  };

  cb.Code _generateDefaultFunctionBody() {
    if (originalReturnType.isBool) {
      if (method.supportsLastError) {
        return cb.Block.of([
          cb.declareFinal('result_').assign(ffiCall).statement,
          cb
              .refer('Win32Result')
              .newInstance(const [], {
                'value': cb
                    .refer('result_')
                    .property('value')
                    .property('i32')
                    .notEqualTo(cb.refer('FALSE')),
                'error': cb.refer('result_').property('error'),
              })
              .returned
              .statement,
        ]);
      }

      return ffiCall.notEqualTo(cb.refer('FALSE')).statement;
    }

    if (originalReturnType.isEnum) {
      if (method.supportsLastError) {
        return cb.Block.of([
          cb.declareFinal('result_').assign(ffiCall).statement,
          cb
              .refer('.new')
              .newInstance(const [], {
                'value': cb.refer('.new').newInstance([
                  cb
                      .refer('result_')
                      .property('value')
                      .property(win32ResultType),
                ]),
                'error': cb.refer('result_').property('error'),
              })
              .returned
              .statement,
        ]);
      }

      return cb.refer('.new').newInstance([ffiCall]).statement;
    }

    if (originalReturnType.publicType == 'RPC_STATUS' ||
        (!method.supportsLastError &&
            (originalReturnType.isWrapperStruct ||
                originalReturnType.isString))) {
      return cb.refer(originalReturnType.publicType).newInstance([
        ffiCall,
      ]).statement;
    }

    if (originalReturnType.isInterface) {
      return _generateReturnInterfaceFunctionBody();
    }

    if (method.supportsLastError) {
      if (originalReturnType.dartType == 'void') {
        return cb.refer('WIN32_ERROR').newInstance([ffiCall]).statement;
      }

      final needsCasting =
          win32ResultType == 'ptr' && originalReturnType.ffiType != 'Pointer';

      return cb.Block.of([
        cb.declareFinal('result_').assign(ffiCall).statement,
        cb
            .refer('.new')
            .newInstance(const [], {
              'value': needsCasting
                  ? originalReturnType.isString ||
                            originalReturnType.isWrapperStruct
                        ? cb.refer('.new').newInstance([
                            cb
                                .refer('result_')
                                .property('value')
                                .property(win32ResultType)
                                .property('cast')
                                .call(const []),
                          ])
                        : cb
                              .refer('result_')
                              .property('value')
                              .property(win32ResultType)
                              .property('cast')
                              .call(const [])
                  : originalReturnType.isString ||
                        originalReturnType.isWrapperStruct
                  ? cb.refer('.new').newInstance([
                      cb
                          .refer('result_')
                          .property('value')
                          .property(win32ResultType),
                    ])
                  : cb
                        .refer('result_')
                        .property('value')
                        .property(win32ResultType),
              'error': cb.refer('result_').property('error'),
            })
            .returned
            .statement,
      ]);
    }

    return ffiCall.statement;
  }

  cb.Code _generateQueryFunctionBody() {
    final (guid: _, :guidIdx, object: _, :objectIdx) = method.isQuery!;
    final guid = parameters[guidIdx];
    final object = parameters[objectIdx];
    return cb.Block.of([
      cb
          .declareFinal('companion')
          .assign(
            cb.refer('ComInterface').property('type').call(const [], const {}, [
              cb.refer('T'),
            ]),
          )
          .statement,
      cb
          .declareFinal(guid.name)
          .assign(
            cb
                .refer('companion')
                .property('iid')
                .property('toNative')
                .call(const []),
          )
          .statement,
      _allocateMemoryForReturnValue(object),
      cb
          .declareFinal(r'hr$')
          .assign(cb.refer('HRESULT').newInstance([ffiCall]))
          .statement,
      cb.refer('free').call([cb.refer(guid.name)]).statement,
      const .new(r'if (hr$.isError) {'),
      cb.refer('free').call([cb.refer(object.name)]).statement,
      cb
          .refer('WindowsException')
          .newInstance([cb.refer(r'hr$')])
          .thrown
          .statement,
      const .new('}'),
      cb
          .declareFinal('result')
          .assign(
            cb.refer('companion').property('fromPointer').call([
              cb
                  .refer(object.name)
                  .property('value')
                  .property('cast')
                  .call(const []),
            ]),
          )
          .statement,
      cb.refer('free').call([cb.refer(object.name)]).statement,
      cb.refer('result').returned.statement,
    ]);
  }

  cb.Code _generateQueryOptionalFunctionBody() {
    final (guid: _, :guidIdx, object: _, :objectIdx) = method.isQuery!;
    final guid = parameters[guidIdx];
    return cb.Block.of([
      cb
          .declareFinal('companion')
          .assign(
            cb.refer('ComInterface').property('type').call(const [], const {}, [
              cb.refer('T'),
            ]),
          )
          .statement,
      cb
          .declareFinal(guid.name)
          .assign(
            cb
                .refer('companion')
                .property('iid')
                .property('toNative')
                .call(const []),
          )
          .statement,
      cb
          .declareFinal(r'hr$')
          .assign(cb.refer('HRESULT').newInstance([ffiCall]))
          .statement,
      cb.refer('free').call([cb.refer(guid.name)]).statement,
      const .new(r'if (hr$.isError) throw WindowsException(hr$);'),
    ]);
  }

  cb.Code _generateResultValueFunctionBody() {
    final parameter = parameters.last;
    return cb.Block.of([
      _allocateMemoryForReturnValue(parameter),
      cb
          .declareFinal(r'hr$')
          .assign(cb.refer('HRESULT').newInstance([ffiCall]))
          .statement,
      const .new(r'if (hr$.isError) {'),
      cb.refer('free').call([cb.refer(parameter.name)]).statement,
      cb
          .refer('WindowsException')
          .newInstance([cb.refer(r'hr$')])
          .thrown
          .statement,
      const .new('}'),
      ..._generateResultHandlingCode(parameter),
    ]);
  }

  List<cb.Code> _generateResultHandlingCode(ParameterProjection parameter) {
    final type = parameter.type.deref();

    if (type.isBool) {
      return [
        cb
            .declareFinal(r'result$')
            .assign(cb.refer(parameter.name).property('value'))
            .statement,
        cb.refer('free').call([cb.refer(parameter.name)]).statement,
        cb.refer(r'result$').notEqualTo(cb.refer('FALSE')).returned.statement,
      ];
    }

    if (type.isEnum ||
        type.isInterface ||
        type.isString ||
        type.isWrapperStruct) {
      return [
        cb
            .declareFinal(r'result$')
            .assign(cb.refer(parameter.name).property('value'))
            .statement,
        cb.refer('free').call([cb.refer(parameter.name)]).statement,
        if (isNullable) const .new(r'if (result$.isNull) return null;'),
        cb.refer('.new').newInstance([cb.refer(r'result$')]).returned.statement,
      ];
    }

    if (type.isStruct && !type.isWrapperStruct) {
      return [cb.refer(parameter.name).returned.statement];
    }

    return [
      cb
          .declareFinal(r'result$')
          .assign(cb.refer(parameter.name).property('value'))
          .statement,
      cb.refer('free').call([cb.refer(parameter.name)]).statement,
      cb.refer(r'result$').returned.statement,
    ];
  }

  cb.Code _generateResultVoidFunctionBody() => cb.Block.of([
    cb
        .declareFinal(r'hr$')
        .assign(cb.refer('HRESULT').newInstance([ffiCall]))
        .statement,
    const .new(r'if (hr$.isError) throw WindowsException(hr$);'),
  ]);

  cb.Code _generateReturnBooleanFunctionBody() {
    if (method.supportsLastError) {
      return cb.Block.of([
        cb.declareFinal('result_').assign(ffiCall).statement,
        cb
            .refer('.new')
            .newInstance(const [], {
              'value': cb
                  .refer('result_')
                  .property('value')
                  .property('i32')
                  .notEqualTo(cb.refer('FALSE')),
              'error': cb.refer('result_').property('error'),
            })
            .returned
            .statement,
      ]);
    }

    return ffiCall.notEqualTo(cb.refer('FALSE')).code;
  }

  cb.Code _generateReturnInterfaceFunctionBody() => cb.Block.of([
    cb.declareFinal('result').assign(ffiCall).statement,
    const .new('if (result.isNull) return null;'),
    cb.refer('.new').newInstance([cb.refer('result')]).returned.statement,
  ]);

  cb.Code _allocateMemoryForReturnValue(ParameterProjection parameter) {
    final type = parameter.type.tryDeref() ?? parameter.type;
    return cb
        .declareFinal(parameter.name)
        .assign(
          cb.refer('adaptiveCalloc').call(const [], const {}, [
            cb.refer(type.ffiType),
          ]),
        )
        .statement;
  }

  @override
  String get debugName => 'FunctionProjection(name: $name)';
}
