import 'dart:io';

import 'package:service_manager_cli/service_manager_cli.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty ||
      arguments.contains('-h') ||
      arguments.contains('--help')) {
    printUsage();
    return;
  }

  final verbose = arguments.contains('-v') || arguments.contains('--verbose');
  final args = arguments
      .where((arg) => arg != '-v' && arg != '--verbose')
      .toList();

  ServiceManager.log = verbose;

  final command = args[0];
  final serviceName = args.length > 1 ? args[1] : null;

  switch (command) {
    case 'list':
      listServices();

    case 'start':
      if (serviceName == null) {
        print('Please provide the service name to start.');
        exit(1);
      }
      startService(serviceName);

    case 'status':
      if (serviceName == null) {
        print('Please provide a service name to get status.');
        exit(1);
      }
      status(serviceName);

    case 'stop':
      if (serviceName == null) {
        print('Please provide the service name to stop.');
        exit(1);
      }
      stopService(serviceName);

    default:
      print('Unknown command: $command');
      print('');
      printUsage();
      exit(1);
  }
}

void printUsage() {
  print('A command-line interface for managing Windows services.');
  print('');
  print('Usage: service_manager_cli <command> [arguments]');
  print('');
  print('Global options:');
  print('  -v, --verbose         Show additional command output.');
  print('  -h, --help            Print this usage information.');
  print('');
  print('Available commands:');
  print('  list                  List all services.');
  print('  start <service_name>  Start a service.');
  print('  status <service_name> Get the status of a service.');
  print('  stop <service_name>   Stop a service.');
}

void listServices() {
  final services = ServiceManager.services;
  if (services.isEmpty) {
    print('Failed to get services.');
    return;
  }

  print('Found ${services.length} services:');
  for (final service in services) {
    print(' $service');
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

void status(String serviceName) {
  final status = ServiceManager.status(serviceName);
  if (status == null) {
    print('Failed to get status of service "$serviceName".');
  } else {
    print('Status of service "$serviceName": ${status.name}');
  }
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
