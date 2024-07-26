# Publishing a new release

When it's time to publish a new release, follow these steps:

1. Update the version numbers in the `CHANGELOG.md` and `pubspec.yaml` files
   (e.g., `5.3.0-wip` -> `5.3.0`).

2. Create a commit with the message "Prepare for release v**x.y.z**", replacing
   `x.y.z` with the new version number (e.g., `5.3.0`).

3. Create a pull request (PR) with the commit and get it reviewed and merged.

4. Create a new release on GitHub by following the link provided in the
   **Publish tag** from the **Package publishing** comment on the PR. This link
   will pre-fill the release information with the correct tag and changelog
   entry.

Once the release is created on GitHub, the publish action will be triggered and
the new version of the package will be published to [pub.dev](https://pub.dev).
