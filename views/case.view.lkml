view: case {
  sql_table_name: reporting_perf_prem.`case` ;;
  suggestions: no

  dimension: artifact_id {
    type: number
    primary_key: yes
    # hidden: yes
    sql: ${TABLE}.ArtifactID ;;
  }

  dimension: data_grid_file_share_resource_server_artifact_id {
    type: number
    sql: ${TABLE}.DataGridFileShareResourceServerArtifactID ;;
  }

  dimension: default_cache_location_server_artifact_id {
    type: number
    sql: ${TABLE}.DefaultCacheLocationServerArtifactID ;;
  }

  dimension: default_file_location_code_artifact_id {
    type: number
    sql: ${TABLE}.DefaultFileLocationCodeArtifactID ;;
  }

  dimension: download_handler_application_path {
    type: string
    sql: ${TABLE}.DownloadHandlerApplicationPath ;;
  }

  dimension: enable_data_grid {
    type: yesno
    sql: ${TABLE}.EnableDataGrid ;;
  }

  dimension: highlight_terms {
    type: string
    sql: ${TABLE}.HighlightTerms ;;
  }

  dimension: matter_artifact_id {
    type: number
    sql: ${TABLE}.MatterArtifactID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: pipeline_key_id {
    type: number
    sql: ${TABLE}.PIPELINE_KEY_ID ;;
  }

  dimension: redaction_text {
    type: string
    sql: ${TABLE}.RedactionText ;;
  }

  dimension: resource_group_artifact_id {
    type: number
    sql: ${TABLE}.ResourceGroupArtifactID ;;
  }

  dimension: root_artifact_id {
    type: number
    sql: ${TABLE}.RootArtifactID ;;
  }

  dimension: root_folder_id {
    type: number
    sql: ${TABLE}.RootFolderID ;;
  }

  dimension: server_id {
    type: number
    sql: ${TABLE}.ServerID ;;
  }

  dimension: sql_full_text_lcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SqlFullTextLcid ;;
  }

  dimension: status_code_artifact_id {
    type: number
    sql: ${TABLE}.StatusCodeArtifactID ;;
  }

  dimension: sys_change_operation {
    type: string
    sql: ${TABLE}.SYS_CHANGE_OPERATION ;;
  }

  dimension: sys_change_version {
    type: number
    sql: ${TABLE}.SYS_CHANGE_VERSION ;;
  }

  dimension: update_native_file_identification_values {
    type: yesno
    sql: ${TABLE}.UpdateNativeFileIdentificationValues ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.Version ;;
  }

  dimension: workspace_admin_group_id {
    type: number
    sql: ${TABLE}.WorkspaceAdminGroupID ;;
  }

  measure: count {
    type: count
    drill_fields: [name, artifact.parent_artifact_id]
  }
}
