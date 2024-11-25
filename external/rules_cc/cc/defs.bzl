"""SStarlark rules for build C/C++ projects."""

load("//cc:providers.bzl", "NativeCcInfo")

def cc_binary(**attrs):
    """Bazel cc_binary rule.

    https://docs.bazel.build/versions/main/be/c-cpp.html#cc_binary

    Args:
      **attrs: Rule attributes
    """
    native.cc_binary(**attrs)

def cc_test(**attrs):
    """Bazel cc_test rule.

    https://docs.bazel.build/versions/main/be/c-cpp.html#cc_test

    Args:
      **attrs: Rule attributes
    """
    native.cc_test(**attrs)

def cc_library(**attrs):
    """Bazel cc_library rule.

    https://docs.bazel.build/versions/main/be/c-cpp.html#cc_library

    Args:
      **attrs: Rule attributes
    """
    native.cc_library(**attrs)

def cc_proto_library(**attrs):
    """Bazel cc_proto_library rule.

    https://docs.bazel.build/versions/main/be/c-cpp.html#cc_proto_library

    Args:
      **attrs: Rule attributes
    """

    # buildifier: disable=native-cc-proto
    native.cc_proto_library(**attrs)

def cc_toolchain(**attrs):
    """Bazel cc_toolchain rule.

    https://docs.bazel.build/versions/main/be/c-cpp.html#cc_toolchain

    Args:
      **attrs: Rule attributes
    """
    native.cc_toolchain(**attrs)

def cc_toolchain_suite(**attrs):
    """Bazel cc_toolchain_suite rule.

    https://docs.bazel.build/versions/main/be/c-cpp.html#cc_toolchain_suite

    Args:
      **attrs: Rule attributes
    """
    native.cc_toolchain_suite(**attrs)

CcInfo = NativeCcInfo
