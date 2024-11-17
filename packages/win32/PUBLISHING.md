# 🚀 Publishing a New Release

Follow these steps to publish a new release of the package:

## 1️⃣ Trigger the **Prepare Release** Workflow

Go to the [GitHub Actions] tab and trigger the [Prepare Release] workflow.

This workflow will:

- 🔼 **Bump** the `version` in the `pubspec.yaml` file based on commit messages
  _(e.g., `6.0.0` ➡️ `6.1.0`)_.
- 📝 **Update** the `CHANGELOG.md` file with the latest changes.

After making these changes, the workflow will create a pull request (PR)
_(e.g., **`chore(release): v6.1.0`**)_.

## 2️⃣ Review and Merge the PR

Open the PR created by the workflow, review the changes, and **merge it** into
the main branch.

## 3️⃣ Automatic Release and Publishing

After merging the PR, the following workflows will automatically be triggered:

### 📦 **Release** Workflow

- The [Release] workflow workflow will **create** a new release on GitHub with
  the corresponding Git tag.

### 🚀 **Publish** Workflow

- After the Git tag is created, the [Publish] workflow will be triggered to
  **publish** the new package version to [pub.dev].

[GitHub Actions]: https://github.com/halildurmus/win32/actions
[Prepare Release]: https://github.com/halildurmus/win32/blob/main/.github/workflows/prepare_release.yml
[pub.dev]: https://pub.dev
[Publish]: https://github.com/halildurmus/win32/blob/main/.github/workflows/publish.yml
[Release]: https://github.com/halildurmus/win32/blob/main/.github/workflows/release.yml
