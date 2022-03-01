package main

deny[msg] {
  input.release_categories[_] == "Deprecated"

  msg := "The image's repository should not be deprecated! Please check the release_categories list in Pyxis/Comet"
}

