view: artifact {
  sql_table_name: reporting_perf_prem.artifact ;;
  drill_fields: [parent_artifact_id]
  suggestions: no

  dimension: parent_artifact_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ParentArtifactID ;;
  }

  dimension: access_control_list_id {
    type: number
    sql: ${TABLE}.AccessControlListID ;;
  }

  dimension: access_control_list_is_inherited {
    type: yesno
    sql: ${TABLE}.AccessControlListIsInherited ;;
  }

  dimension: artifact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ArtifactID ;;
  }

  dimension: artifact_type_id {
    type: number
    sql: ${TABLE}.ArtifactTypeID ;;
  }

  dimension: container_id {
    type: number
    sql: ${TABLE}.ContainerID ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: created_on {
    type: string
    sql: ${TABLE}.CreatedOn ;;
  }

  dimension: delete_flag {
    type: yesno
    sql: ${TABLE}.DeleteFlag ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.Keywords ;;
  }

  dimension: last_modified_by {
    type: number
    sql: ${TABLE}.LastModifiedBy ;;
  }

  dimension: last_modified_on {
    type: string
    sql: ${TABLE}.LastModifiedOn ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: pipeline_key_id {
    type: number
    sql: ${TABLE}.PIPELINE_KEY_ID ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: sys_change_operation {
    type: string
    sql: ${TABLE}.SYS_CHANGE_OPERATION ;;
  }

  dimension: sys_change_version {
    type: number
    sql: ${TABLE}.SYS_CHANGE_VERSION ;;
  }

  dimension: text_identifier {
    type: string
    sql: ${TABLE}.TextIdentifier ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      parent_artifact_id,
      artifact.parent_artifact_id,
      artifact.count,
      case.count,
      client.count,
      code.count,
      document.count,
      matter.count,
      user.count
    ]
  }
}
