package main

violation_install_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["name"]

  name := "name_label_required"
  msg := "'name' label is required"
  description := "The 'name' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_com_redhat_component_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["com.redhat.component"]

  name := "com_redhat_component_label_required"
  msg := "'com.redhat.component' label is required"
  description := "The 'com.redhat.component' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_version_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["version"]

  name := "version_label_required"
  msg := "'version' label is required"
  description := "The 'version' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_description_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["description"]

  name := "description_label_required"
  msg := "'description' label is required"
  description := "The 'description' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_io_k8s_description_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["io.k8s.description"]

  name := "io_k8s_description_label_required"
  msg := "'io.k8s.description' label is required"
  description := "The 'io.k8s.description' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_vcs_ref_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["vcs-ref"]

  name := "vcs_ref_label_required"
  msg := "'vcs-ref' label is required"
  description := "The 'vcs-ref' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_vcs_type_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["vcs-type"]

  name := "vcs_type_label_required"
  msg := "'vcs-type' label is required"
  description := "The 'vcs-type' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_architecture_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["architecture"]

  name := "architecture_label_required"
  msg := "'architecture' label is required"
  description := "The 'architecture' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_com_redhat_build_host_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["com.redhat.build-host"]

  name := "com_redhat_build_host_label_required"
  msg := "'com.redhat.build-host' label is required"
  description := "The 'com.redhat.build-host' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_vendor_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["vendor"]

  name := "vendor_label_required"
  msg := "'vendor' label is required"
  description := "The 'vendor' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_release_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["release"]

  name := "release_label_required"
  msg := "'release' label is required"
  description := "The 'release' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_url_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["url"]

  name := "url_label_required"
  msg := "'url' label is required"
  description := "The 'url' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_build_date_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["build-date"]

  name := "build_date_label_required"
  msg := "'build-date' label is required"
  description := "The 'build-date' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

violation_distribution_scope_required[{"msg": msg, "details":{"name": name, "description": description, "url": url}}] {
  not input.Labels["distribution-scope"]

  name := "distribution_scope_label_required"
  msg := "'distribution-scope' label is required"
  description := "The 'distribution-scope' label needs to be defined"
  url := "https://source.redhat.com/groups/public/container-build-system/container_build_system_wiki/guide_to_layered_image_build_service_osbs#jive_content_id_Labels"
}

