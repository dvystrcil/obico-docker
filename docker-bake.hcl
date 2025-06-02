group "default" {
  targets = ["ml_api", "web", "tasks"]
}

target "ml_api" {
  context = "./ml_api"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/dvystrcil/obico/ml-api:latest"]
}

target "web" {
  context = "./backend"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/dvystrcil/obico/web:latest"]
}

target "tasks" {
  context = "./backend"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/dvystrcil/obico/tasks:latest"]
}