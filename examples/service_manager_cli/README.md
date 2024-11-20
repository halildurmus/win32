# Service Manager CLI

A command-line interface for managing Windows services.

## Feature Overview

- **Enumerating services:** View a set of all available services on the system.
- **Starting and stopping a service:** Start or stop a service by its name.
- **Querying service status:** Retrieve the current operational status of a
  service by its name.

## Installation

Activate the CLI tool globally by running the following command:

```cmd
> cd example
> dart pub global activate service_manager_cli -s path
```

## Usage

Run the CLI tool to see the usage information:

```cmd
service_manager_cli
```

The following output will be displayed:

```text
A command-line interface for managing Windows services.

Usage: service_manager_cli <command> [arguments]

Global options:
  -v, --verbose         Show additional command output.
  -h, --help            Print this usage information.

Available commands:
  list                  List all services.
  start <service_name>  Start a service.
  status <service_name> Get the status of a service.
  stop <service_name>   Stop a service.
```
