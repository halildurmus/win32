// Demonstrates using named pipes from Dart. To run this example, open two
// separate command windows. In the first, run:
//   dart examples\pipe.dart server
//
// In the second, run:
//   dart examples\pipe.dart client
//
// The first window will connect to a pipe and then block until a client pipe is
// activated. When the client is opened, it will receive the message from the
// server pipe and then both will exit.
//
// Example based on the following blog post:
//   https://peter.bloomfield.online/introduction-to-win32-named-pipes-cpp/

import 'dart:ffi';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:win32/win32.dart';

const pipeName = r'\\.\pipe\dart_pipe';
const pipeMessage = '*** Hello Pipe World ***';

/// A named pipe client
class ClientCommand extends Command<void> {
  @override
  String get name => 'client';
  @override
  String get description => 'Execute the named pipe client.';

  @override
  void run() {
    final lpBuffer = Pwstr.allocate(128);
    final lpNumBytesRead = loggingCalloc<DWORD>();
    try {
      stdout.writeln('Connecting to pipe...');
      final fileName = w(pipeName);
      final pipe = CreateFile(
        fileName.ptr,
        GENERIC_READ,
        FILE_SHARE_READ | FILE_SHARE_WRITE,
        null,
        OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL,
        null,
      );
      if (pipe == INVALID_HANDLE_VALUE) {
        stderr.writeln('Failed to connect to pipe.');
        exit(1);
      }

      stdout.writeln('Reading data from pipe...');
      if (!ReadFile(pipe, lpBuffer.ptr.cast(), 128, lpNumBytesRead, null)) {
        stderr.writeln('Failed to read data from the pipe.');
      } else {
        final numBytesRead = lpNumBytesRead.value;
        stdout
          ..writeln('Number of bytes read: $numBytesRead')
          ..writeln('Message: ${lpBuffer.toDartString()}');
      }

      CloseHandle(pipe);
      stdout.writeln('Done.');
    } finally {
      free(lpNumBytesRead);
    }
  }
}

/// A named pipe server.
class ServerCommand extends Command<void> {
  @override
  String get name => 'server';
  @override
  String get description => 'Execute the named pipe server.';

  @override
  void run() {
    final lpPipeMessage = w(pipeMessage);
    final lpNumBytesWritten = loggingCalloc<DWORD>();
    try {
      final name = w(pipeName);
      final pipe = CreateNamedPipe(
        name.ptr,
        PIPE_ACCESS_OUTBOUND,
        PIPE_TYPE_BYTE,
        1,
        0,
        0,
        0,
        null,
      );
      if (pipe == NULL || pipe == INVALID_HANDLE_VALUE) {
        stderr.writeln('Failed to create outbound pipe instance.');
        exit(1);
      }

      stdout.writeln('Sending data to pipe...');
      if (!ConnectNamedPipe(pipe, null)) {
        CloseHandle(pipe);
        stderr.writeln('Failed to make connection on named pipe.');
        exit(1);
      }

      if (!WriteFile(
        pipe,
        lpPipeMessage.ptr.cast(),
        pipeMessage.length * 2,
        lpNumBytesWritten,
        null,
      )) {
        stderr.writeln('Failed to send data.');
      } else {
        final numBytesWritten = lpNumBytesWritten.value;
        stdout.writeln('Number of bytes sent: $numBytesWritten');
      }
      CloseHandle(pipe);
      stdout.writeln('Done.');
    } finally {
      free(lpNumBytesWritten);
    }
  }
}

void main(List<String> args) async {
  final command =
      CommandRunner<void>('pipe', 'A demonstration of Win32 named pipes.')
        ..addCommand(ClientCommand())
        ..addCommand(ServerCommand());
  await command.run(args);
}
