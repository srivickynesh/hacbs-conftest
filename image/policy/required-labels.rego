package main

violation_install_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["name"]

  name := "name_label_required"
  msg := "The 'name' label is required"
  description := "Name of the Image or Container."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_com_redhat_component_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["com.redhat.component"]

  name := "com_redhat_component_label_required"
  msg := "The 'com.redhat.component' label is required"
  description := "The Bugzilla component name where bugs against this container should be reported by users."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_version_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["version"]

  name := "version_label_required"
  msg := "The 'version' label is required"
  description := "Version of the image."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_description_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["description"]

  name := "description_label_required"
  msg := "The 'description' label is required"
  description := "Detailed description of the image."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_io_k8s_description_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["io.k8s.description"]

  name := "io_k8s_description_label_required"
  msg := "The 'io.k8s.description' label is required"
  description := "Description of the container displayed in Kubernetes."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_vcs_ref_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["vcs-ref"]

  name := "vcs_ref_label_required"
  msg := "The 'vcs-ref' label is required"
  description := "A 'reference' within the version control repository; e.g. a git commit, or a subversion branch."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_vcs_type_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["vcs-type"]

  name := "vcs_type_label_required"
  msg := "The 'vcs-type' label is required"
  description := "The type of version control used by the container source. Generally one of git, hg, svn, bzr, cvs"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_architecture_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["architecture"]

  name := "architecture_label_required"
  msg := "The 'architecture' label is required"
  description := "Architecture the software in the image should target."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_com_redhat_build_host_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["com.redhat.build-host"]

  name := "com_redhat_build_host_label_required"
  msg := "The 'com.redhat.build-host' label is required"
  description := "The build host used to create an image for internal use and auditability, similar to the use in RPM."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_vendor_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["vendor"]

  name := "vendor_label_required"
  msg := "The 'vendor' label is required"
  description := "Name of the vendor."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_release_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["release"]

  name := "release_label_required"
  msg := "The 'release' label is required"
  description := "Release Number for this version."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_url_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["url"]

  name := "url_label_required"
  msg := "The 'url' label is required"
  description := "A URL where the user can find more information about the image."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_build_date_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["build-date"]

  name := "build_date_label_required"
  msg := "The 'build-date' label is required"
  description := "Date/Time image was built as RFC 3339 date-time."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_distribution_scope_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["distribution-scope"]

  name := "distribution_scope_label_required"
  msg := "The 'distribution-scope' label is required"
  description := "Scope of intended distribution of the image. (private/authoritative-source-only/restricted/public)."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

warn_maintainer_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["maintainer"]

  name := "maintainer_label_required"
  msg := "The 'maintainer' label should be defined"
  description := "The name and email of the maintainer (usually the submitter). Should contain `@redhat.com` or `Red Hat`."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

warn_summary_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["summary"]

  name := "summary_label_required"
  msg := "The 'summary' label should be defined"
  description := "A short description of the image."
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

