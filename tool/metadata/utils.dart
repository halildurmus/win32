// Useful utilities

/// Strip the Unicode / ANSI suffix from the method name
String methodNameWithoutEncoding(String methodName) {
  if (methodName.endsWith('W') || methodName.endsWith('A')) {
    return methodName.substring(0, methodName.length - 1);
  } else {
    return methodName;
  }
}

/// Take an input string and turn it into a multi-line doc comment.
String wrapCommentText(String inputText, [int wrapLength = 76]) {
  final words = inputText.split(' ');
  final textLine = StringBuffer('/// ');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine.clear();
      textLine.write('/// $word ');
    } else {
      textLine.write('$word ');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}
