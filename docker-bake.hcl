variable "BASE_IMAGE_DATE" {
  default = "unknown"
}

target "default" {
    tags = [
        "madebytimo/base:latest",
        "madebytimo/base:v0.0.1",
        "madebytimo/base:v0.0.1-debian-${BASE_IMAGE_DATE}"
    ]
    platforms = [
        "amd64",
        "arm64",
        "arm",
    ]
}