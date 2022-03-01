# HACBS Conftest policies

Collection of [Conftest](https://www.conftest.dev/) policies for HACBS container sanity tests.
The policies are written in [Rego](https://www.openpolicyagent.org/docs/latest/#rego) language from [Open Policy Agent](https://www.openpolicyagent.org/).

Requires [conftest](https://www.conftest.dev/install/) and [skopeo](https://github.com/containers/skopeo) utilities installed on the system.

##List of implemented policies:

* Required and deprecated label policies for image metadata obtained by inspecting the image
* Deprecated repository policy for repository Pyxis data
* Unsigned RPM policy for RPM manifest Pyxis data

# Example usage

The image policies require access to the image repository.

```bash
skopeo inspect docker://"${IMAGE_UNDER_TEST}" > image_metadata.json
conftest test --policy policy/image image_metadata.json
```