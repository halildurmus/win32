import 'dart:io';

final prototypes = <String, TypeDef>{};

class TypeDef {
  String? neutralApiName;
  final List<String> prototype;
  String? nativeReturn;
  String? dartReturn;
  final Map<String, String> nativeParams = {};
  final Map<String, String> dartParams = {};
  String? dllLibrary;
  late String comment;

  TypeDef(this.prototype);
}

void loadCsv(String filename) {
  final file = File(filename);
  final lines = file.readAsLinesSync().skip(1);
  for (final line in lines) {
    final fields = line.split(', ');
    final apiName = fields[0];
    final neutralApiName = fields[1];
    final dllLibrary = fields[2];

    var prototype = fields[3];
    var idx = 4;
    // keep consuming until we have a quoted string
    while (prototype.allMatches('"').length == 1) {
      // ignore: use_string_buffers
      prototype += ', ${fields[idx++]}';
    }
    prototype = prototype.replaceAll('"', '');

    prototypes[apiName] = TypeDef(prototype.split('\n'))
      ..neutralApiName = neutralApiName
      ..dllLibrary = dllLibrary
      ..nativeReturn = fields[idx++]
      ..dartReturn = fields[idx++];

    try {
      final numParams = int.parse(fields[idx++]);
      for (var i = 0; i < numParams; i++) {
        final paramName = fields[idx++];
        final paramNativeType = fields[idx++];
        final paramDartType = fields[idx++];

        prototypes[apiName]!.dartParams[paramName] = paramDartType;
        prototypes[apiName]!.nativeParams[paramName] = paramNativeType;
      }
    } catch (e) {
      print('Error processing parameters for $apiName at index $idx.');
      rethrow;
    }

    // last field is the comment
    // keep consuming until we have a quoted string
    if (fields.length > idx) {
      prototypes[apiName]!.comment = fields[idx++];
      while (prototypes[apiName]!.comment.indexOf('"') == 0 &&
          prototypes[apiName]!.comment.lastIndexOf('"') == 0) {
        prototypes[apiName]!.comment += ', ${fields[idx++]}';
      }
      prototypes[apiName]!.comment =
          prototypes[apiName]!.comment.replaceAll('"', '');
    } else {
      prototypes[apiName]!.comment = '';
    }
  }
}
