import 'dart:io';

import 'package:args/args.dart';
import 'package:service_manager_cli/service_manager_cli.dart';

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Show additional command output.',
      negatable: false,
    )
    ..addCommand('list')
    ..addCommand('start')
    ..addCommand('stop')
    ..addCommand('status')
    ..addFlag(
      'help',
      abbr: 'h',
      help: 'Print usage information.',
      negatable: false,
    );

  final ArgResults results;
  try {
    results = parser.parse(arguments);
  } on ArgParserException catch (e) {
    stderr
      ..writeln(e.message)
      ..writeln();
    printUsage(parser);
    exit(64);
  }

  if (results.flag('help')) {
    printUsage(parser);
    return;
  }

  ServiceManager.log = results.flag('verbose');

  final command = results.command;
  if (command == null) {
    printUsage(parser);
    exit(64);
  }

  switch (command.name) {
    case 'list':
      listServices();

    case 'start':
      _requireServiceName(command);
      startService(command.arguments.first);

    case 'stop':
      _requireServiceName(command);
      stopService(command.arguments.first);

    case 'status':
      _requireServiceName(command);
      status(command.arguments.first);

    default:
      stderr.writeln('Unknown command: ${command.name}');
      printUsage(parser);
      exit(64);
  }
}

void _requireServiceName(ArgResults command) {
  if (command.arguments.isEmpty) {
    stderr.writeln('Please provide a service name.');
    exit(64);
  }
}

void printUsage(ArgParser parser) {
  print('A command-line interface for managing Windows services.');
  print('');
  print('Usage: service_manager_cli <command> [options]');
  print('');
  print('Commands:');
  print('  list');
  print('  start <service_name>');
  print('  stop <service_name>');
  print('  status <service_name>');
  print('');
  print('Options:');
  print(parser.usage);
}

void listServices() {
  final services = ServiceManager.services;
  if (services.isEmpty) {
    print('Failed to get services.');
    return;
  }

  print('Found ${services.length} services:');
  for (final service in services) {
    print('• $service');
  }
}

void startService(String serviceName) {
  print(switch (ServiceManager.start(serviceName)) {
    ServiceStartResult.success =>
      'Service "$serviceName" started successfully.',
    ServiceStartResult.accessDenied =>
      'The attempt to start the service "$serviceName" was denied due to '
          'insufficient permissions.',
    ServiceStartResult.alreadyRunning =>
      'Service "$serviceName" is already running.',
    ServiceStartResult.failed => 'Failed to start service "$serviceName".',
    ServiceStartResult.timedOut =>
      'The attempt to start service "$serviceName" timed out.',
  });
}

void stopService(String serviceName) {
  print(switch (ServiceManager.stop(serviceName)) {
    ServiceStopResult.success => 'Service "$serviceName" stopped successfully.',
    ServiceStopResult.accessDenied =>
      'The attempt to stop the service "$serviceName" was denied due to '
          'insufficient permissions.',
    ServiceStopResult.alreadyStopped =>
      'Service "$serviceName" is already stopped.',
    ServiceStopResult.failed => 'Failed to stop service "$serviceName".',
    ServiceStopResult.timedOut =>
      'The attempt to stop service "$serviceName" timed out.',
  });
}

void status(String serviceName) {
  final status = ServiceManager.status(serviceName);
  if (status == null) {
    print('Failed to get status of service "$serviceName".');
  } else {
    print('Status of service "$serviceName": ${status.name}');
  }
}
