# Contributing

Thank you for your interest in contributing to this project!

For contributing to `package:win32`, please refer to the [Contributing] guide
for detailed contribution guidelines (coding style, pull request process,
documentation, and more).

## 🛠️ Setting Up the Environment

### ⚙️ Requirements

- [Dart](https://dart.dev) version `3.11` or higher
- [git-cliff](https://git-cliff.org) for generating changelogs
- [Lefthook](https://github.com/evilmartians/lefthook) for managing Git hooks

Once your environment is ready, [fork the repository], clone it locally, and
set up the project.

### 📥 Cloning the Repository

Clone your fork of `win32` to your local machine:

```cmd
git clone https://github.com/<your-username>/win32.git
```

### 📦 Installing Dependencies

Navigate to the project directory and install dependencies:

```cmd
cd win32
dart pub get
```

## 🧩 Setting Up Git Hooks

This project uses **Lefthook** to manage Git hooks. Install the hooks by running
the following in the project root:

```cmd
lefthook install
```

This will set up checks that automatically ensure code quality and consistency
before commits.

## 🧪 Running Tests

To run tests for a specific package, navigate to its directory and run:

```cmd
cd packages\<package-name>
dart test
```

## 🚀 Committing Your Work and Preparing a Pull Request

To maintain a consistent and clean codebase, we enforce coding standards and use
tools to ensure high-quality contributions.

### 🎨 Coding Style

Please follow the [Dart style guide] to keep the codebase clean and consistent.

### 📜 Commit Convention

We use [Conventional Commits] to structure our commit messages for clarity and
uniformity.

Please use the following format for commit messages:

```text
<type>(optional scope): <description>
```

Examples:

- `feat: add DragQueryFile API`
- `fix: resolve an issue with the PROPVARIANT struct`

_Commit messages are validated with a GitHub action, so be sure to use the_
_correct format when making a pull request._

### 🧩 Git Hooks

The following hooks run automatically with Lefthook:

- **Pre-Commit Hooks**:
  - `analyze`: Checks code for style issues
  - `format`: Formats code according to Dart guidelines
  - `test_ffi_leak_tracker`: Runs tests for `package:ffi_leak_tracker`
  - `test_filepicker_windows`: Runs tests for `package:filepicker_windows`
  - `test_generator`: Runs tests for `package:generator`
  - `test_win32`: Runs tests for `package:win32`
  - `test_win32_clipboard`: Runs tests for `package:win32_clipboard`
  - `test_win32_gamepad`: Runs tests for `package:win32_gamepad`
  - `test_win32_registry`: Runs tests for `package:win32_registry`
  - `test_win32_runner`: Runs tests for `package:win32_runner`
  - `test_winmd`: Runs tests for `package:winmd`

- **Commit-msg Hook**:
  - `check_commit`: Ensures the commit message follows [Conventional Commits]

### 🔄 Creating a Pull Request

After committing your changes, push them to your fork and
[create a pull request]. When you open a pull request, tests will run
automatically, and our maintainers will review it.

Please use the pull request template to provide details about your changes,
ensuring a smoother review process.

Thank you for contributing to this project! 🎉

[Contributing]: https://win32.pub/docs/community/contributing
[fork the repository]: https://github.com/halildurmus/win32/fork
[Dart style guide]: https://dart.dev/effective-dart/style
[create a pull request]: https://github.com/halildurmus/win32/compare
[Conventional Commits]: https://www.conventionalcommits.org/en/v1.0.0/
