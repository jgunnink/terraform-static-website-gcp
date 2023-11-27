resource "google_storage_bucket" "static_website_bucket" {
  name          = var.static_website_bucket_name
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_storage_bucket.static_website_bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

