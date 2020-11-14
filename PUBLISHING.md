Rough notes on steps I take to publish a new version of win32:

1. Run `tool\generate.cmd` to make sure that the machine-generated classes are
   the latest.

2. Run `dart test` from a Windows 10 machine to make sure all the
   automated tests are still working.

   - Optionally, also run it from Windows 7 to make sure nothing downlevel has
     failed.
   - Optionally, test from macOS or Linux to make sure that tests don't run (and
     fail) on an inappropriate device.
   - Some tests may fail or be skipped from a SSH window (e.g. credential
     saving, console buffer info); this is expected.

3. Run `dartdoc` from the root of the repo and make sure that it completes
   successfully. (I do this and the next step from WSL or a macOS machine.)

4. Run `tool/deploy/deploy.sh` from a Bash prompt to copy the `doc/api` files to
   the `gh-pages` branch.

5. Bump the version in `pubspec.yaml` and update `CHANGELOG.md`.

6. Update `README.md` as appropriate with any changed examples.

7. If ready, run `git tag v1.2.3` to tag the release.

8. Run `git push` and `git push --tags` to push both the release and the tag to
   GitHub.

9. Run `dart pub publish` to push the build live. Watch pub.dev to make sure
   that there's nothing broken.
