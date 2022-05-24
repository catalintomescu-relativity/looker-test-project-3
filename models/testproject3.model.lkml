connection: "reporting_sql_endpoint"

# include all the views
include: "/views/**/*.view"

datagroup: testproject3_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: testproject3_default_datagroup

explore: artifact {}

explore: case {
  join: artifact {
    type: left_outer
    sql_on: ${case.artifact_id} = ${artifact.parent_artifact_id} ;;
    relationship: many_to_one
  }
}
