package main

deny[msg] {
  input.Labels["INSTALL"]

  msg := "The INSTALL label is deprecated, replace with 'install'"
}

deny[msg] {
  input.Labels["ARCHITECTURE"]

  msg := "The  label is deprecated, replace with 'architecture'"
}

deny[msg] {
  input.Labels["NAME"]

  msg := "The NAME label is deprecated, replace with 'name'"
}

deny[msg] {
  input.Labels["RELEASE"]

  msg := "The RELEASE label is deprecated, replace with 'release'"
}

deny[msg] {
  input.Labels["UNINSTALL"]

  msg := "The UNINSTALL label is deprecated, replace with 'uninstall'"
}

deny[msg] {
  input.Labels["VERSION"]

  msg := "The VERSON label is deprecated, replace with 'version'"
}

deny[msg] {
  input.Labels["bzcomponent"]

  msg := "The bzcomponent label is deprecated, replace with 'com.redhat.component'"
}
