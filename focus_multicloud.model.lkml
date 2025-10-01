connection: "default_bigquery_connection"

include: "/01-gcp_billing/views/*.view.lkml"
include: "/02-focus_multicloud/views/*.view.lkml"
include: "/02-focus_multicloud/explores/*.explore.lkml"
include: "/01-gcp_billing/explores/*.explore.lkml"
include: "/01-gcp_billing/dashboards/bigquery.dashboard.lookml"
include: "/01-gcp_billing/dashboards/gcp_summary.dashboard.lookml"
