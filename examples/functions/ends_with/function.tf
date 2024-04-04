run "check_events_path_google_pubsub_subscription_push_endpoint" {

  command = plan

  assert {
    condition     = provider::assert::ends_with(google_pubsub_subscription.example.push_config.push_endpoint, "/events")
    error_message = "Push endpoint must end with /events"
  }
}
