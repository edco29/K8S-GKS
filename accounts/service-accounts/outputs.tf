
output "codebase64jsonfile" {
  description = "This is a base64 key in order to create a standar json file  you need to decode and create a file with json  syntax . This script generate json file decode!!!"
  value = google_service_account_key.challengekey.private_key
}

output "email" {
  # This may seem redundant with the `name` input, but it serves an important
  # purpose. Terraform won't establish a dependency graph without this to interpolate on.
  description = "The email address of the custom service account."
  value       = google_service_account.challengercluster.email
}
