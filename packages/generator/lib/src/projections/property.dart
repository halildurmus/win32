import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart' as winmd;

import '../logger.dart';
import 'method.dart';
import 'parameter.dart';

/// Mixin that provides common functionality for COM property projections.
///
/// Used by both get and set property projections.
base mixin ComPropertyMixin on ComMethodProjection {
  /// The projected parameter of the property.
  ParameterProjection get parameter => parameters.first;

  @override
  String get debugName => 'ComPropertyProjection(name: $name)';
}

/// Dart projection for a COM get property, defined by a [winmd.MethodDef].
///
/// This class generates the necessary Dart code to interact with a COM get
/// property.
base class ComGetPropertyProjection extends ComMethodProjection
    with ComPropertyMixin {
  /// Constructs a [ComGetPropertyProjection] for a COM get property.
  ///
  /// Throws an [AssertionError] if the [method] is not a valid get property.
  ComGetPropertyProjection(super.method, {super.formatCode})
    : assert(
        method.name.startsWith(RegExp('get_(_)?')),
        '$method is not a COM get property.',
      );

  @override
  cb.Library generate() {
    generatorLogger.finest('Generating $debugName...');
    return cb.Library(
      (b) => b.body.add(
        cb.Method(
          (b) => b
            ..docs.addAll(generateApiDocs(apiDetails, row: method))
            ..returns = returnType
            ..type = cb.MethodType.getter
            ..name = name
            ..body = generateFunctionBody(),
        ),
      ),
    );
  }

  @override
  String get debugName => 'ComGetPropertyProjection(name: $name)';
}

/// Dart projection for a COM set property, defined by a [winmd.MethodDef].
///
/// This class generates the necessary Dart code to interact with a COM set
/// property.
base class ComSetPropertyProjection extends ComMethodProjection
    with ComPropertyMixin {
  /// Constructs a [ComSetPropertyProjection] for a COM set property method.
  ///
  /// Throws an [AssertionError] if the [method] is not a valid set property.
  ComSetPropertyProjection(super.method, {super.formatCode})
    : assert(
        method.name.startsWith(RegExp('put_(_)?')),
        '$method is not a COM set property.',
      );

  @override
  cb.Reference get returnType => cb.refer('void');

  @override
  cb.Library generate() {
    generatorLogger.finest('Generating $debugName...');
    return cb.Library(
      (b) => b.body.add(
        cb.Method(
          (b) => b
            ..type = cb.MethodType.setter
            ..name = name
            ..requiredParameters.add(parameter.generate())
            ..body = _generateSetterBody(),
        ),
      ),
    );
  }

  cb.Code _generateSetterBody() => cb.Block.of([
    cb
        .declareFinal(r'hr$')
        .assign(cb.refer('HRESULT').newInstance([ffiCall]))
        .statement,
    const cb.Code(r'if (hr$.isError) throw WindowsException(hr$);'),
  ]);

  @override
  String get debugName => 'ComSetPropertyProjection(name: $name)';
}
