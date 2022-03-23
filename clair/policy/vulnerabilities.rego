package main

deny[msg] {
  rpms_with_vulnerabilities := {rpm.Name | rpm := input.data[_].Features[_]; count(rpm.Vulnerabilities) > 0}
  not count(rpms_with_vulnerabilities) == 0

  msg = sprintf("The packages musn't have any vulnerabilities! Packages with vulnerabilities %s", [concat(", ", rpms_with_vulnerabilities)])
}