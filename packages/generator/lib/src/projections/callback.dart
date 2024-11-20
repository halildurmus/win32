import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart';

import '../extensions/collection.dart';
import '../extensions/type_def.dart';
import '../interop_type.dart';
import '../logger.dart';
import '../projection.dart';
import '../windows_metadata.dart';
import 'function.dart';

/// Represents a Dart projection for a Win32 delegate (callback) defined by a
/// [TypeDef].
///
/// This class generates a Dart `typedef` that mirrors the Win32 callback's
/// signature. It also generates the associated documentation, providing context
/// and references to the original Windows API documentation.
final class CallbackProjection extends Projection with ProjectionMixin {
  /// Creates an instance of this class for the given Win32 delegate [typeDef].
  ///
  /// Throws an [AssertionError] if the provided [typeDef] is not a delegate or
  /// if it does not have the required `Invoke` method.
  CallbackProjection(this.typeDef, {super.formatCode})
    : assert(
        typeDef.category == TypeCategory.delegate &&
            typeDef.tryFindMethod('Invoke') != null,
        '${typeDef.name} is not a callback.',
      ),
      name = typeDef.safeTypeName,
      originalName = typeDef.name;

  /// The name of the callback converted to safe Dart type name.
  final String name;

  /// The original name of the callback.
  final String originalName;

  /// The metadata associated with the callback.
  final TypeDef typeDef;

  /// The [FunctionProjection] for the callback's `Invoke` method.
  late final functionProjection = FunctionProjection(
    typeDef.findMethod('Invoke'),
  );

  /// The return type of the callback.
  cb.Reference get returnType {
    final FunctionProjection(
      :parameters,
      originalReturnType: InteropType(:ffiType),
    ) = functionProjection;

    // Handle specific pointer-type cases like FARPROC, NEARPROC, PROC.
    if (parameters.isEmpty && ffiType == 'IntPtr') {
      return cb.refer('Pointer');
    }

    return cb.refer(ffiType);
  }

  /// The callback's parameters.
  List<cb.Parameter> get parameters => functionProjection.parameters
      .map(
        (p) => cb.Parameter(
          (b) => b
            ..type = cb.refer(p.type.ffiType)
            ..name = p.name,
        ),
      )
      .toFixedList();

  @override
  cb.TypeDef generate() {
    generatorLogger.finest('Generating $debugName...');
    final apiDetails = WindowsMetadata.docs.documentation(typeDef);
    return cb.TypeDef(
      (b) => b
        ..name = name
        ..docs.addAll(
          generateApiDocs(apiDetails, row: typeDef, category: 'callback'),
        )
        ..definition = _generateCallbackDefinition(),
    );
  }

  cb.Expression _generateCallbackDefinition() {
    if (returnType.symbol == 'Pointer') return cb.refer('Pointer');
    return cb.CodeExpression(
      cb.Code(
        '${returnType.symbol} Function('
        '${parameters.map((p) => '${p.type!.symbol} ${p.name}').join(', ')})',
      ),
    );
  }

  @override
  String get debugName => 'CallbackProjection(name: $name)';
}
