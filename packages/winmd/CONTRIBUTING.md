# Contributing

Thank you for your interest in contributing to `package:winmd`!

This guide provides everything you need to get started and make your
contributions effective and rewarding.

We strive to maintain a welcoming and inclusive community, so please read our
[Code of Conduct] before contributing.

## 📝 Good to Know

- **Working on Issues:** If you’d like to work on an existing issue, please
  comment on the issue page to let others know before you begin.
- **Proposing New Features:** Have an idea for a new feature? Create an issue to
  discuss it with the community and maintainers before diving in.

## 🙌 How You Can Contribute

- **🌟 Star Us on GitHub**: If you enjoy using this package, a star on [GitHub]
  helps support our work.
- **🐛 Report Bugs**: Found a bug? Let us know on our [GitHub Issues] page.
- **📝 Improve Documentation**: High-quality documentation is crucial. Help us
  improve it by refining the existing docs or adding new content.
- **💬 Give Feedback**: Share your experience using `winmd`, what
  features you’d like, and what works well on [GitHub Discussions].
- **📢 Share `winmd`**: Spread the word about this project to reach
  more users.
- **💻 Contribute to the Codebase**: Work on new features or tackle
  [open issues][GitHub Issues] — all contributions are highly appreciated!

## 🛠️ Setting Up the Environment

### ⚙️ Requirements

- [Dart](https://dart.dev) version `3.11` or higher
- [git-cliff](https://git-cliff.org) for generating changelogs
- [Lefthook](https://github.com/evilmartians/lefthook) for managing Git hooks

Once your environment is ready, [fork the repository], clone it locally, and
set up the project.

### 📥 Cloning the Repository

Clone your fork of **winmd** to your local machine:

```cmd
git clone https://github.com/<your-username>/winmd.git
```

### 📦 Installing Dependencies

Navigate to the project directory and install dependencies:

```cmd
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

### ✅ Running Tests

To run tests for the `package:winmd`, use:

```cmd
dart test -j 1 --test-randomize-ordering-seed=random
```

- `-j 1`: Runs tests sequentially, increasing the likelihood of detecting
  segmentation faults or similar test failures.
- `--test-randomize-ordering-seed=random`: Randomizes the test execution order
  to identify unintended dependencies between tests.

_We require tests for each feature or bug fix. If you’re unsure how to write_
_tests for your changes, feel free to ask on the relevant GitHub issue page._

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

- `feat: add winmdLogger to control package-wide logging`
- `fix: resolve an issue with the MetadataIndex.findTypes() method`

_Commit messages are validated with a GitHub action, so be sure to use the_
_correct format when making a pull request._

### 🧩 Git Hooks

The following hooks run automatically with Lefthook:

- **Pre-Commit Hooks**:
  - `analyze`: Checks code for style issues.
  - `format`: Formats code according to Dart guidelines.
  - `test`: Runs tests to ensure stability.

- **Commit-msg Hook**:
  - `check_commit`: Ensures the commit message follows [Conventional Commits].

### 🔄 Creating a Pull Request

After committing your changes, push them to your fork and
[create a pull request]. When you open a pull request, tests will run
automatically, and our maintainers will review it.

Please use the pull request template to provide details about your changes,
ensuring a smoother review process.

Thank you for contributing to `package:winmd`! 🎉

[Code of Conduct]: https://github.com/halildurmus/winmd/blob/main/CODE_OF_CONDUCT.md
[Conventional Commits]: https://www.conventionalcommits.org/en/v1.0.0/
[create a pull request]: https://github.com/halildurmus/winmd/compare
[Dart style guide]: https://dart.dev/effective-dart/style
[fork the repository]: https://github.com/halildurmus/winmd/fork
[GitHub]: https://github.com/halildurmus/winmd
[GitHub Discussions]: https://github.com/halildurmus/winmd/discussions
[GitHub Issues]: https://github.com/halildurmus/winmd/issues
