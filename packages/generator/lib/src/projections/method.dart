import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart';

import '../docs/api_details.dart';
import '../extensions/method_def.dart';
import '../extensions/string.dart';
import '../logger.dart';
import '../windows_metadata.dart';
import 'function.dart';

/// Represents a Dart projection for a COM method defined by a [MethodDef].
///
/// This class is responsible for converting a Win32 COM method, defined in the
/// metadata, into its Dart projection. The projection generates a Dart method
/// that can be invoked directly to call the corresponding COM method.
base class ComMethodProjection extends FunctionProjection {
  /// Creates an instance of this class for a COM [method].
  ComMethodProjection(super.method, {super.formatCode});

  /// The method name in camel case format.
  ///
  /// COM methods are typically named in TitleCase, but Dart prefers camelCase.
  /// Converting names to camelCase also helps avoid name conflicts with
  /// reserved Dart keywords.
  @override
  String get name => method.camelCasedUniqueName;

  /// The name of the cached function for the native method.
  @override
  String get wrapperName =>
      '${method.nameWithoutEncoding.safeTypeName.privatize()}Fn';

  /// The list of Dart parameters for the method.
  @override
  List<cb.Reference> get dartParameters => [
    // The first parameter is always the v-table itself.
    cb.refer('VTablePointer'),
    ...parameters.map((p) => p.dartProjection),
  ];

  /// The list of native parameters for the method.
  @override
  List<cb.Reference> get nativeParameters => [
    // The first parameter is always the v-table itself.
    cb.refer('VTablePointer'),
    ...parameters.map((p) => p.nativeProjection),
  ];

  /// The list of arguments passed to the method body.
  ///
  /// The first argument is the pointer to the v-table, followed by the actual
  /// method arguments.
  @override
  List<cb.Expression> get arguments => [
    cb.refer('ptr'),
    ...parameters.map((parameter) => parameter.argument),
  ];

  @override
  ApiDetails? get apiDetails => WindowsMetadata.docs.documentation(method);

  @override
  String? get category => null;

  cb.Field get functionLookup => cb.Field(
    (b) => b
      ..late = true
      ..modifier = cb.FieldModifier.final$
      ..name = '${originalName}Fn'.privatize()
      ..assignment = cb
          .refer('_vtable')
          .property(originalName)
          .property('asFunction')
          .call(
            const [],
            {if (method.isLeaf) 'isLeaf': cb.literalTrue},
            [dartPrototype],
          )
          .code,
  );

  @override
  cb.Library generate() {
    generatorLogger.finest('Generating $debugName...');
    return cb.Library((b) => b.body.add(generateMethod()));
  }

  @override
  String get debugName => 'ComMethodProjection(name: $name)';
}
