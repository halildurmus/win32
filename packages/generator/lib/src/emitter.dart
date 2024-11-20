import 'package:code_builder/code_builder.dart' as cb;

final class DartEmitter extends cb.DartEmitter {
  DartEmitter({super.orderDirectives = true, super.useNullSafetySyntax = true});

  var _indentLevel = 0;

  void _indent() => _indentLevel++;

  void _dedent() => _indentLevel--;

  var _withInConstExpression = false;

  @override
  StringSink visitAnnotation(cb.Expression spec, [StringSink? output]) {
    (output ??= StringBuffer()).write('@');
    spec.accept(this, output);
    return output;
  }

  void _writeAnnotations(
    Iterable<cb.Expression> annotations,
    StringSink output, {
    bool newline = true,
  }) {
    for (final a in annotations) {
      visitAnnotation(a, output);
      newline ? output.writeln() : output.write(' ');
    }
  }

  /// Similar to [startConstCode], but handles writing `"const "` if [isConst]
  /// is `true` and the invocation is not nested under other invocations where
  /// [isConst] is true.
  StringSink _writeConstExpression(
    StringSink sink,
    bool isConst,
    StringSink Function() visitExpression,
  ) {
    final previousConstContext = _withInConstExpression;
    if (isConst) {
      if (!_withInConstExpression) sink.write('const ');
      _withInConstExpression = true;
    }
    final returnedSink = visitExpression();
    assert(
      identical(returnedSink, sink),
      'The provided visitExpression function should return the same sink',
    );
    _withInConstExpression = previousConstContext;
    return sink;
  }

  void _writeConstructors(
    Iterable<cb.Constructor> constructors,
    String className,
    StringSink output,
  ) {
    for (var i = 0; i < constructors.length; i++) {
      final currentConstructor = constructors.elementAt(i);
      visitConstructor(currentConstructor, className, output);
      if (i < constructors.length - 1) {
        final nextConstructor = constructors.elementAt(i + 1);
        if ((currentConstructor.docs.isNotEmpty ||
                currentConstructor.annotations.isNotEmpty) ||
            (nextConstructor.docs.isNotEmpty ||
                nextConstructor.annotations.isNotEmpty)) {
          output.writeln();
        }
        output.writeln();
      }
    }
  }

  /// Writes a dartdoc comment block with automatic sentence wrapping.
  ///
  /// This method formats the given [docs] list as a dartdoc block, prefixing
  /// each line with `/// `. It wraps lines to ensure that no line exceeds the
  /// [wrapLength] while also preserving sentence boundaries.
  ///
  /// If there is more than one sentence in the input comment, a blank line is
  /// inserted between the first sentence and the remaining sentences.
  ///
  /// Example usage:
  /// ```dart
  /// final out = StringBuffer();
  /// _writeDartdocCommentBlock([
  ///   'This is a long description. It contains multiple sentences '
  ///   'that need to be formatted properly for Dart documentation.',
  ///   '',
  ///   '@category core',
  /// ], out);
  /// print(out);
  /// ```
  ///
  /// The example above produces the following output:
  /// ```text
  /// /// This is a long description.
  /// ///
  /// /// It contains multiple sentences that need to be formatted properly for
  /// /// Dart documentation.
  /// ///
  /// /// @category core
  /// ```
  void _writeDartdocCommentBlock(
    Iterable<String> docs,
    StringSink out, {
    int wrapLength = 80,
  }) {
    for (var i = 0; i < docs.length; i++) {
      final doc = docs.elementAt(i);

      // If the docs list contains only one doc and it starts with '///', write
      // it as is.
      if (docs.length == 1 && doc.startsWith('///')) {
        out.write(doc);
        return;
      }

      // If the doc is empty, write an empty dartdoc comment with newline.
      if (doc.isEmpty) {
        out.writeln('///');
        continue;
      }

      final sentences = doc.split(
        RegExp(r'(?<=[.!?])\s+(?=[\p{Lu}\p{N}*_`])', unicode: true),
      );
      final textLine = StringBuffer();
      final availableLength =
          wrapLength - 4 /* represents length of "/// " */ - _indentLevel * 2;

      // Process each sentence in the string.
      for (var j = 0; j < sentences.length; j++) {
        final words = sentences[j].trim().split(' ');

        for (var k = 0; k < words.length; k++) {
          final word = words[k];
          // If adding the word exceeds the available length, write the
          // current line.
          if (textLine.length + word.length >= availableLength) {
            out.writeln('/// $textLine');
            textLine.clear();
          }

          // Append the word to the current line, adding a space if it's not
          // the first word.
          if (textLine.isNotEmpty) textLine.write(' ');
          textLine.write(word);
        }

        // Add an extra line after the first sentence if there are more docs o
        // sentences.
        if (i == 0 && j == 0) {
          out.writeln('/// $textLine');
          textLine.clear();
          if ((docs.length > 1 && docs.elementAt(1).isNotEmpty) ||
              sentences.length > 1) {
            out.writeln('///');
          }
        }
      }

      // Write any remaining content in the buffer.
      if (textLine.isNotEmpty) out.writeln('/// $textLine');
    }
  }

  void _writeFields(Iterable<cb.Field> fields, StringSink output) {
    for (var i = 0; i < fields.length; i++) {
      final currentField = fields.elementAt(i);
      visitField(currentField, output);
      if (i < fields.length - 1) {
        final nextField = fields.elementAt(i + 1);
        if ((currentField.docs.isNotEmpty ||
                currentField.annotations.isNotEmpty) ||
            (nextField.docs.isNotEmpty || nextField.annotations.isNotEmpty)) {
          output.writeln();
        }
        output.writeln();
      }
    }
  }

  void _writeMethods(Iterable<cb.Method> methods, StringSink output) {
    final list = methods.toList();
    for (var i = 0; i < list.length; i++) {
      final currentMethod = list[i];
      visitMethod(currentMethod, output);
      if (i < list.length - 1) {
        final nextMethod = list[i + 1];
        if ((currentMethod.docs.isNotEmpty ||
                currentMethod.annotations.isNotEmpty) ||
            (nextMethod.docs.isNotEmpty || nextMethod.annotations.isNotEmpty)) {
          output.writeln();
        }
        output.writeln();
      }
    }
  }

  @override
  StringSink visitClass(cb.Class spec, [StringSink? output]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    if (spec.sealed) {
      output.write('sealed ');
    } else {
      if (spec.abstract) output.write('abstract ');
      if (spec.modifier case final modifier?) output.write('${modifier.name} ');
      if (spec.mixin) output.write('mixin ');
    }
    output.write('class ${spec.name}');
    visitTypeParameters(spec.types.map((r) => r.type), output);
    if (spec.extend != null) {
      output.write(' extends ');
      spec.extend!.type.accept(this, output);
    }
    if (spec.mixins.isNotEmpty) {
      output.write(' with ');
      _visitAll<cb.Reference>(spec.mixins, output, (spec) {
        spec.accept(this, output);
      });
    }
    if (spec.implements.isNotEmpty) {
      output.write(' implements ');
      _visitAll<cb.Reference>(spec.implements, output, (spec) {
        spec.accept(this, output);
      });
    }
    output.write(' ');
    final isEmptyBody =
        spec.constructors.isEmpty &&
        spec.fields.isEmpty &&
        spec.methods.isEmpty;
    if (isEmptyBody) {
      output.write('{}');
      return output;
    }
    output.writeln('{');
    _indent();
    _writeConstructors(spec.constructors, spec.name, output);
    if (spec.constructors.isNotEmpty && spec.fields.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeFields(spec.fields, output);
    if ((spec.constructors.isNotEmpty || spec.fields.isNotEmpty) &&
        spec.methods.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeMethods(spec.methods, output);
    _dedent();
    output
      ..writeln()
      ..write('}');
    return output;
  }

  @override
  StringSink visitConstructor(
    cb.Constructor spec,
    String clazz, [
    StringSink? output,
  ]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    if (spec.external) output.write('external ');
    if (spec.constant) output.write('const ');
    if (spec.factory) output.write('factory ');
    output.write(clazz);
    if (spec.name != null) {
      output
        ..write('.')
        ..write(spec.name);
    }
    output.write('(');
    for (var i = 0; i < spec.requiredParameters.length; i++) {
      final p = spec.requiredParameters[i];
      _visitParameter(p, output);
      if (i < spec.requiredParameters.length - 1) output.write(', ');
    }

    if (spec.optionalParameters.isNotEmpty) {
      if (spec.requiredParameters.isNotEmpty) output.write(', ');
      final named = spec.optionalParameters.any((p) => p.named);
      output.write(named ? '{' : '[');
      for (var i = 0; i < spec.optionalParameters.length; i++) {
        final p = spec.optionalParameters[i];
        _visitParameter(p, output, optional: true, named: named);
        if (i < spec.optionalParameters.length - 1) output.write(', ');
      }
      output.write(named ? '}' : ']');
    }
    output.write(')');
    if (spec.initializers.isNotEmpty) {
      output.write(' : ');
      for (var i = 0; i < spec.initializers.length; i++) {
        spec.initializers[i].accept(this, output);
        if (i < spec.initializers.length - 1) output.write(', ');
      }
    }
    if (spec.redirect != null) {
      output.write(' = ');
      spec.redirect!.type.accept(this, output);
      output.write(';');
    } else if (spec.body != null) {
      if (_isLambdaConstructor(spec)) {
        output.write(' => ');
        spec.body!.accept(this, output);
        if (_isLambdaBody(spec.body)) output.write(';');
      } else {
        output.writeln(' {');
        spec.body!.accept(this, output);
        output
          ..writeln()
          ..write('}');
      }
    } else {
      output.write(';');
    }
    return output;
  }

  @override
  StringSink visitEnum(cb.Enum spec, [StringSink? output]) {
    final out = output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, out);
    _writeAnnotations(spec.annotations, output);
    out.write('enum ${spec.name}');
    visitTypeParameters(spec.types.map((r) => r.type), out);
    if (spec.mixins.isNotEmpty) {
      out.write(' with ');
      _visitAll<cb.Reference>(spec.mixins, out, (spec) {
        spec.accept(this, out);
      });
    }
    if (spec.implements.isNotEmpty) {
      out.write(' implements ');
      _visitAll<cb.Reference>(spec.implements, out, (spec) {
        spec.accept(this, out);
      });
    }
    out.write(' ');
    final isPlainEnum =
        spec.values.every(
          (v) =>
              v.annotations.isEmpty &&
              v.constructorName == null &&
              v.docs.isEmpty,
        ) &&
        spec.constructors.isEmpty &&
        spec.fields.isEmpty &&
        spec.methods.isEmpty;
    if (isPlainEnum) {
      out.write('{ ');
      for (var i = 0; i < spec.values.length; i++) {
        final v = spec.values[i];
        out.write(v.name);
        if (i < spec.values.length - 1) out.write(',');
      }
      out.write(' }');
      return out;
    }
    out.writeln('{');
    _indent();
    for (var i = 0; i < spec.values.length; i++) {
      final currentValue = spec.values[i];
      _writeDartdocCommentBlock(currentValue.docs, out);
      _writeAnnotations(currentValue.annotations, out);
      out.write(currentValue.name);
      if (currentValue.constructorName != null) {
        out.write('.${currentValue.constructorName}');
      }
      visitTypeParameters(currentValue.types.map((r) => r.type), out);
      final takesArguments =
          currentValue.constructorName != null ||
          currentValue.arguments.isNotEmpty ||
          currentValue.namedArguments.isNotEmpty;
      if (takesArguments) out.write('(');
      if (currentValue.arguments.isNotEmpty) {
        _visitAll<cb.Spec>(currentValue.arguments, out, (arg) {
          arg.accept(this);
        });
      }
      if (currentValue.arguments.isNotEmpty &&
          currentValue.namedArguments.isNotEmpty) {
        out.write(', ');
      }
      _visitAll<String>(currentValue.namedArguments.keys, out, (name) {
        out
          ..write(name)
          ..write(': ');
        currentValue.namedArguments[name]!.accept(this, out);
      });
      if (takesArguments) out.write(')');
      if (i < spec.values.length - 1) {
        final nextValue = spec.values[i + 1];
        if ((currentValue.docs.isNotEmpty ||
                currentValue.annotations.isNotEmpty) ||
            (nextValue.docs.isNotEmpty || nextValue.annotations.isNotEmpty)) {
          out
            ..writeln(',')
            ..writeln();
        } else {
          out.writeln(',');
        }
      } else if (spec.constructors.isNotEmpty ||
          spec.fields.isNotEmpty ||
          spec.methods.isNotEmpty) {
        out
          ..writeln(';')
          ..writeln();
      }
    }
    _writeConstructors(spec.constructors, spec.name, output);
    if (spec.constructors.isNotEmpty && spec.fields.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeFields(spec.fields, output);
    if ((spec.constructors.isNotEmpty || spec.fields.isNotEmpty) &&
        spec.methods.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeMethods(spec.methods, output);
    _dedent();
    out
      ..writeln()
      ..write('}');
    return out;
  }

  @override
  StringSink visitExtension(cb.Extension spec, [StringSink? output]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    output.write('extension');
    if (spec.name != null) output.write(' ${spec.name}');
    visitTypeParameters(spec.types.map((r) => r.type), output);
    if (spec.on != null) {
      output.write(' on ');
      spec.on!.type.accept(this, output);
    }
    output.write(' ');
    final isEmptyBody = spec.fields.isEmpty && spec.methods.isEmpty;
    if (isEmptyBody) {
      output.write('{}');
      return output;
    }

    output.writeln('{');
    _indent();
    _writeFields(spec.fields, output);
    if (spec.fields.isNotEmpty && spec.methods.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeMethods(spec.methods, output);
    _dedent();
    output
      ..writeln()
      ..write('}');
    return output;
  }

  @override
  StringSink visitExtensionType(cb.ExtensionType spec, [StringSink? output]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    output.write('extension type ');
    if (spec.constant) output.write('const ');
    output.write(spec.name);
    visitTypeParameters(spec.types.map((r) => r.type), output);
    if (spec.primaryConstructorName.isNotEmpty) {
      output.write('.${spec.primaryConstructorName}');
    }
    output.write('(');
    _visitRepresentationDeclaration(spec.representationDeclaration, output);
    output.write(')');

    if (spec.implements.isNotEmpty) {
      output.write(' implements ');
      _visitAll<cb.Reference>(spec.implements, output, (spec) {
        spec.accept(this, output);
      });
    }
    output.write(' ');
    final isEmptyBody =
        spec.constructors.isEmpty &&
        spec.fields.isEmpty &&
        spec.methods.isEmpty;
    if (isEmptyBody) {
      output.write('{}');
      return output;
    }

    output.writeln('{');
    _indent();
    _writeConstructors(spec.constructors, spec.name, output);
    if (spec.constructors.isNotEmpty && spec.fields.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeFields(spec.fields, output);
    if ((spec.constructors.isNotEmpty || spec.fields.isNotEmpty) &&
        spec.methods.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeMethods(spec.methods, output);
    _dedent();
    output
      ..writeln()
      ..write('}');
    return output;
  }

  void _visitRepresentationDeclaration(
    cb.RepresentationDeclaration spec,
    StringSink out,
  ) {
    _writeDartdocCommentBlock(spec.docs, out);
    _writeAnnotations(spec.annotations, out, newline: false);
    spec.declaredRepresentationType.accept(this, out);
    out.write(' ${spec.name}');
  }

  @override
  StringSink visitField(cb.Field spec, [StringSink? output]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    if (spec.static) output.write('static ');
    if (spec.late) output.write('late ');
    if (spec.external) output.write('external ');
    switch (spec.modifier) {
      case cb.FieldModifier.var$:
        if (spec.type == null) output.write('var ');
      case cb.FieldModifier.final$:
        output.write('final ');
      case cb.FieldModifier.constant:
        output.write('const ');
    }
    if (spec.type != null) {
      spec.type!.type.accept(this, output);
      output.write(' ');
    }
    output.write(spec.name);
    if (spec.assignment != null) {
      output.write(' = ');
      startConstCode(spec.modifier == cb.FieldModifier.constant, () {
        spec.assignment!.accept(this, output);
      });
    }
    output.write(';');
    return output;
  }

  @override
  StringSink visitFunctionType(cb.FunctionType spec, [StringSink? output]) {
    final out = output ??= StringBuffer();
    if (spec.returnType != null) {
      spec.returnType!.accept(this, out);
      out.write(' ');
    }
    out.write('Function');
    if (spec.types.isNotEmpty) {
      out.write('<');
      _visitAll<cb.Reference>(spec.types, out, (spec) {
        spec.accept(this, out);
      });
      out.write('>');
    }
    out.write('(');
    _visitAll<cb.Reference>(spec.requiredParameters, out, (spec) {
      spec.accept(this, out);
    });
    final hasNamedParameters =
        spec.namedRequiredParameters.isNotEmpty ||
        spec.namedParameters.isNotEmpty;
    if (spec.optionalParameters.isNotEmpty) {
      if (spec.requiredParameters.isNotEmpty) out.write(', ');
      out.write('[');
      _visitAll<cb.Reference>(spec.optionalParameters, out, (spec) {
        spec.accept(this, out);
      });
      out.write(']');
    } else if (hasNamedParameters) {
      out.write('{');
      _visitAll<String>(spec.namedRequiredParameters.keys, out, (name) {
        out.write('required ');
        spec.namedRequiredParameters[name]!.accept(this, out);
        out
          ..write(' ')
          ..write(name);
      });
      if (spec.namedRequiredParameters.isNotEmpty &&
          spec.namedParameters.isNotEmpty) {
        out.write(', ');
      }
      _visitAll<String>(spec.namedParameters.keys, out, (name) {
        spec.namedParameters[name]!.accept(this, out);
        out
          ..write(' ')
          ..write(name);
      });
      out.write('}');
    }
    out.write(')');
    if (spec.isNullable ?? false) out.write('?');
    return out;
  }

  @override
  StringSink visitInvokeExpression(
    cb.InvokeExpression expression, [
    StringSink? output,
  ]) {
    final out = output ??= StringBuffer();
    return _writeConstExpression(out, expression.isConst, () {
      expression.target.accept(this, out);
      if (expression.name != null) {
        out
          ..write('.')
          ..write(expression.name);
      }
      if (expression.typeArguments.isNotEmpty) {
        out.write('<');
        _visitAll<cb.Reference>(expression.typeArguments, out, (type) {
          type.accept(this, out);
        });
        out.write('>');
      }
      out.write('(');
      _visitAll<cb.Spec>(expression.positionalArguments, out, (spec) {
        spec.accept(this, out);
      });
      if (expression.positionalArguments.isNotEmpty &&
          expression.namedArguments.isNotEmpty) {
        out.write(', ');
      }
      _visitAll<String>(expression.namedArguments.keys, out, (name) {
        out
          ..write(name)
          ..write(': ');
        expression.namedArguments[name]!.accept(this, out);
      });
      return out..write(')');
    });
  }

  @override
  StringSink visitLibrary(cb.Library spec, [StringSink? output]) {
    output ??= StringBuffer();
    if (spec.comments.isNotEmpty) {
      spec.comments.map((line) => '// $line').forEach(output.writeln);
      output.writeln();
    }
    if (spec.generatedByComment != null) {
      output
        ..writeln('// ${spec.generatedByComment}')
        ..writeln();
    }
    if (spec.ignoreForFile.isNotEmpty) {
      final ignores = spec.ignoreForFile.toList()..sort();
      final lines = ['// ignore_for_file: ${ignores.first}'];
      for (final ignore in ignores.skip(1)) {
        if (lines.last.length + 2 + ignore.length > 80) {
          lines.add('// ignore_for_file: $ignore');
        } else {
          lines[lines.length - 1] = '${lines.last}, $ignore';
        }
      }
      lines.forEach(output.writeln);
      output.writeln();
    }

    // Process the body first in order to prime the allocators.
    final body = StringBuffer();
    for (var i = 0; i < spec.body.length; i++) {
      spec.body[i].accept(this, body);
      if (i < spec.body.length - 1) {
        body
          ..writeln()
          ..writeln();
      }
    }

    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    if (spec.name != null) {
      output.write('library ${spec.name!};');
    } else if (spec.annotations.isNotEmpty || spec.docs.isNotEmpty) {
      // An explicit _unnamed_ library directive is only required if there are
      // annotations or doc comments on the library.
      output.write('library;');
    }

    final directives = <cb.Directive>[...allocator.imports, ...spec.directives];
    if (orderDirectives) directives.sort();

    if (directives.any((d) => d.as?.startsWith('_') ?? false)) {
      output.writeln(
        '// ignore_for_file: no_leading_underscores_for_library_prefixes',
      );
    }

    for (var i = 0; i < directives.length; i++) {
      final currentDirective = directives[i];
      final nextDirective = i < directives.length - 1
          ? directives[i + 1]
          : null;
      currentDirective.accept(this, output);
      if (_newLineBetween(orderDirectives, currentDirective, nextDirective)) {
        output
          ..writeln()
          ..writeln();
      } else {
        output.writeln();
      }
    }

    if (directives.isNotEmpty && body.isNotEmpty) output.writeln();
    output.write(body);
    return output;
  }

  @override
  StringSink visitLiteralListExpression(
    cb.LiteralListExpression expression, [
    StringSink? output,
  ]) {
    final out = output ??= StringBuffer();
    return _writeConstExpression(output, expression.isConst, () {
      if (expression.type != null) {
        out.write('<');
        expression.type!.accept(this, output);
        out.write('>');
      }
      out.write('[');
      _visitAll<Object?>(expression.values, out, (value) {
        _acceptLiteral(value, out);
      });
      return out..write(']');
    });
  }

  @override
  StringSink visitMethod(cb.Method spec, [StringSink? output]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    if (spec.external) output.write('external ');
    if (spec.static) output.write('static ');
    if (spec.returns != null) {
      spec.returns!.accept(this, output);
      output.write(' ');
    }
    if (spec.type == cb.MethodType.getter) {
      output
        ..write('get ')
        ..write(spec.name);
    } else {
      if (spec.type == cb.MethodType.setter) output.write('set ');
      if (spec.name != null) output.write(spec.name);
      visitTypeParameters(spec.types.map((r) => r.type), output);
      output.write('(');
      for (var i = 0; i < spec.requiredParameters.length; i++) {
        final p = spec.requiredParameters[i];
        _visitParameter(p, output);
        if (i < spec.requiredParameters.length - 1) output.write(', ');
      }

      if (spec.optionalParameters.isNotEmpty) {
        if (spec.requiredParameters.isNotEmpty) output.write(', ');
        final named = spec.optionalParameters.any((p) => p.named);
        output.write(named ? '{' : '[');
        for (var i = 0; i < spec.optionalParameters.length; i++) {
          final p = spec.optionalParameters[i];
          _visitParameter(p, output, optional: true, named: named);
          if (i < spec.optionalParameters.length - 1) output.write(', ');
        }
        output.write(named ? '}' : ']');
      }
      output.write(')');
    }
    if (spec.body != null) {
      if (spec.modifier != null) {
        switch (spec.modifier!) {
          case cb.MethodModifier.async:
            output.write(' async ');
          case cb.MethodModifier.asyncStar:
            output.write(' async* ');
          case cb.MethodModifier.syncStar:
            output.write(' sync* ');
        }
      }
      if (_isLambdaMethod(spec)) {
        output.write(' => ');
      } else {
        output.writeln(' {');
      }
      spec.body!.accept(this, output);
      if (_isLambdaBody(spec.body)) {
        output.write(';');
      } else if (!_isLambdaMethod(spec)) {
        output
          ..writeln()
          ..write('}');
      }
    } else {
      output.write(';');
    }
    return output;
  }

  void _visitParameter(
    cb.Parameter spec,
    StringSink output, {
    bool optional = false,
    bool named = false,
  }) {
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output, newline: false);
    // The `required` keyword must precede the `covariant` keyword.
    if (spec.required) output.write('required ');
    if (spec.covariant) output.write('covariant ');
    if (spec.type != null) {
      spec.type!.type.accept(this, output);
      output.write(' ');
    }
    if (spec.toThis) output.write('this.');
    if (spec.toSuper) output.write('super.');
    output.write(spec.name);
    if (optional && spec.defaultTo != null) {
      output.write(' = ');
      spec.defaultTo!.accept(this, output);
    }
  }

  @override
  StringSink visitMixin(cb.Mixin spec, [StringSink? output]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    if (spec.base) output.write('base ');
    output.write('mixin ${spec.name}');
    visitTypeParameters(spec.types.map((r) => r.type), output);
    if (spec.on != null) {
      output.write(' on ');
      spec.on!.type.accept(this, output);
    }
    if (spec.implements.isNotEmpty) {
      output.write(' implements ');
      _visitAll<cb.Reference>(spec.implements, output, (spec) {
        spec.accept(this, output);
      });
    }
    output.write(' ');
    final isEmptyBody = spec.fields.isEmpty && spec.methods.isEmpty;
    if (isEmptyBody) {
      output.write('{}');
      return output;
    }

    output.writeln('{');
    _indent();
    _writeFields(spec.fields, output);
    if (spec.fields.isNotEmpty && spec.methods.isNotEmpty) {
      output
        ..writeln()
        ..writeln();
    }
    _writeMethods(spec.methods, output);
    _dedent();
    output
      ..writeln()
      ..write('}');
    return output;
  }

  @override
  StringSink visitRecordType(cb.RecordType spec, [StringSink? output]) {
    final out = (output ??= StringBuffer())..write('(');
    _visitAll<cb.Reference>(spec.positionalFieldTypes, out, (spec) {
      spec.accept(this, out);
    });
    if (spec.namedFieldTypes.isNotEmpty) {
      if (spec.positionalFieldTypes.isNotEmpty) out.write(', ');
      out.write('{');
      _visitAll<MapEntry<String, cb.Reference>>(
        spec.namedFieldTypes.entries,
        out,
        (entry) {
          entry.value.accept(this, out);
          out.write(' ${entry.key}');
        },
      );
      out.write('}');
    } else if (spec.positionalFieldTypes.length == 1) {
      out.write(',');
    }
    out.write(')');
    if (spec.isNullable ?? false) out.write('?');
    return out;
  }

  @override
  StringSink visitTypeDef(cb.TypeDef spec, [StringSink? output]) {
    output ??= StringBuffer();
    _writeDartdocCommentBlock(spec.docs, output);
    _writeAnnotations(spec.annotations, output);
    output.write('typedef ${spec.name}');
    visitTypeParameters(spec.types.map((r) => r.type), output);
    output.write(' = ');
    spec.definition.accept(this, output);
    output.write(';');
    return output;
  }

  @override
  StringSink visitTypeParameters(
    Iterable<cb.Reference> specs, [
    StringSink? output,
  ]) {
    output ??= StringBuffer();
    if (specs.isNotEmpty) {
      output.write('<');
      _visitAll<cb.Reference>(specs, output, (spec) {
        spec.accept(this, output);
      });
      output.write('>');
    }
    return output;
  }

  void _acceptLiteral(Object? literalOrSpec, StringSink output) {
    if (literalOrSpec is cb.Spec) {
      literalOrSpec.accept(this, output);
      return;
    }
    cb.literal(literalOrSpec).accept(this, output);
  }
}

bool _isLambdaBody(cb.Code? code) =>
    code is cb.ToCodeExpression && !code.isStatement;

/// Whether the provided [method] is considered a lambda method.
bool _isLambdaMethod(cb.Method method) =>
    method.lambda ?? _isLambdaBody(method.body);

/// Whether the provided [constructor] is considered a lambda method.
bool _isLambdaConstructor(cb.Constructor constructor) =>
    constructor.lambda ??
    constructor.factory && _isLambdaBody(constructor.body);

/// Returns `true` if:
///
/// * [ordered] is `true`
/// * [a] is non-`null`
/// * If there should be an empty line before [b] if it's emitted after [a].
bool _newLineBetween(bool ordered, cb.Directive a, cb.Directive? b) {
  if (!ordered) return false;
  if (b == null) return false;

  // Put a line between imports and exports
  if (a.type != b.type) return true;

  // Within exports, don't put in extra blank lines
  if (a.type == cb.DirectiveType.export) {
    assert(b.type == cb.DirectiveType.export, 'Expected export directive');
    return false;
  }

  // Return `true` if the schemes for [a] and [b] are different
  return !Uri.parse(a.url).isScheme(Uri.parse(b.url).scheme);
}

/// Helper method improving on [StringSink.writeAll] by avoiding unnecessary
/// StringBuffer(s) allocations.
///
/// For every `Spec` in [elements], executing [visit].
///
/// If [elements] is at least 2 elements, inserts [separator] delimiting them.
StringSink _visitAll<T>(
  Iterable<T> elements,
  StringSink output,
  void Function(T) visit, [
  String separator = ', ',
]) {
  if (elements.isEmpty) return output;
  final iterator = elements.iterator..moveNext();
  visit(iterator.current);
  while (iterator.moveNext()) {
    output.write(separator);
    visit(iterator.current);
  }
  return output;
}
