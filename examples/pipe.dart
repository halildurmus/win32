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
import 'package:ffi/ffi.dart';
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
    using((arena) {
      final lpBuffer = arena.pwstrBuffer(128);
      final lpNumBytesRead = arena<DWORD>();
      stdout.writeln('Connecting to pipe...');
      final fileName = arena.pcwstr(pipeName);
      final Win32Result(value: hFile, :error) = CreateFile(
        fileName,
        GENERIC_READ,
        FILE_SHARE_READ | FILE_SHARE_WRITE,
        null,
        OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL,
        null,
      );
      if (hFile == INVALID_HANDLE_VALUE) {
        stderr.writeln('Failed to connect to pipe.');
        throw WindowsException(error.toHRESULT());
      }

      stdout.writeln('Reading data from pipe...');
      final result = ReadFile(
        hFile,
        lpBuffer.cast(),
        128,
        lpNumBytesRead,
        null,
      );
      if (!result.value) {
        stderr
          ..writeln('Failed to read data from the pipe.')
          ..writeln(error.toHRESULT());
      } else {
        final numBytesRead = lpNumBytesRead.value;
        stdout
          ..writeln('Number of bytes read: $numBytesRead')
          ..writeln('Message: ${lpBuffer.toDartString()}');
      }

      hFile.close();
      stdout.writeln('Done.');
    });
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
    using((arena) {
      final lpNumBytesWritten = arena<DWORD>();
      final pipe = CreateNamedPipe(
        arena.pcwstr(pipeName),
        PIPE_ACCESS_OUTBOUND,
        PIPE_TYPE_BYTE,
        1,
        0,
        0,
        0,
        null,
      );
      if (pipe == INVALID_HANDLE_VALUE) {
        throw Exception('Failed to create outbound pipe instance.');
      }

      stdout.writeln('Sending data to pipe...');
      var result = ConnectNamedPipe(pipe, null);
      if (!result.value) {
        pipe.close();
        stderr.writeln('Failed to make connection on named pipe.');
        throw WindowsException(result.error.toHRESULT());
      }

      result = WriteFile(
        pipe,
        arena.pcwstr(pipeMessage).cast(),
        pipeMessage.length * 2,
        lpNumBytesWritten,
        null,
      );
      if (!result.value) {
        stderr
          ..writeln('Failed to send data.')
          ..writeln(result.error.toHRESULT());
      } else {
        final numBytesWritten = lpNumBytesWritten.value;
        stdout.writeln('Number of bytes sent: $numBytesWritten');
      }
      pipe.close();
      stdout.writeln('Done.');
    });
  }
}

void main(List<String> args) async {
  final command =
      CommandRunner<void>('pipe', 'A demonstration of Win32 named pipes.')
        ..addCommand(ClientCommand())
        ..addCommand(ServerCommand());
  await command.run(args);
}
