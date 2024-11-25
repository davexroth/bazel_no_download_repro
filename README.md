# experimental_repository_disable_download fails with blzmod enabled


The required packages being available in local repositories, but `--experimental_repository_disable_download` will error out when bzlmod is enabled.

To reproduce the bug:

1. Clear the bazel cache -  `rm -rv $(bazelisk info repository_cache)`
2. Build with downloads disabled - `bazelisk build --experimental_repository_disable_download //:main`

   This will fail, with the error "no such package '@@platforms//host': java.io.IOException: Failed to download repository @@platforms: download is disabled."
3. Disable blzmod and try again - `bazelisk build --experimental_repository_disable_download --enable_bzlmod=false //:main`

  This will pass.
