package main

violation_install_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["INSTALL"]

  name := "install_label_deprecated"
  msg := "INSTALL label deprecated"
  description := "The 'INSTALL' label is deprecated, replace with 'install'"
}

violation_architecture_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["Architecture"]

  name := "architecture_label_deprecated"
  msg := "The Architecture label is deprecated"
  description := "The 'Architecture' label is deprecated, replace with 'architecture'"
}

violation_name_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["Name"]

  name := "name_label_deprecated"
  msg := "The Name label is deprecated"
  description := "The 'Name' label is deprecated, replace with 'name'"
}

violation_release_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["Release"]

  name := "release_label_deprecated"
  msg := "The Release label is deprecated"
  description := "The 'Release' label is deprecated, replace with 'release'"
}

violation_uninstall_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["UNINSTALL"]

  name := "uninstall_label_deprecated"
  msg := "The UNINSTALL label is deprecated"
  description := "The 'UNINSTALL' label is deprecated, replace with 'uninstall'"
}

violation_version_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["Version"]

  name := "version_label_deprecated"
  msg := "The Version label is deprecated"
  description := "The 'Version' label is deprecated, replace with 'version'"
}

violation_bzcomponent_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["BZComponent"]

  name := "bzcomponent_label_deprecated"
  msg := "The BZComponent label is deprecated"
  description := "The BZComponent label is deprecated, replace with 'com.redhat.component'"
}

violation_run_deprecated[{"msg": msg, "details":{"name": name, "description": description}}] {
  input.Labels["RUN"]

  name := "run_label_deprecated"
  msg := "The RUN label is deprecated"
  description := "The 'RUN' label is deprecated, replace with 'run'"
}
