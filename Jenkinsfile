node {

  def app

  environment {
    registry = "hrohden/udacitycapstone"
    registryCredential = "docker-hub"
  }

  stage('Checkout') {
    git url: 'https://github.com/hrohden/udacity-capstone-project'
  }

  stage('Clean previous results') {
    sh "./mvnw clean"
  }

  stage('Lint') {
    sh "htmlhint **/*.html"
  }

  stage('Compile source code') {
    sh "./mvnw compile"
  }

  stage('Package sources') {
    sh "./mvnw package"
  }

  stage('Build Docker image') {
    app = docker.build("hrohden/udacitycapstone")
  }

  stage('Push image') {
    def version = readFile('VERSION')
    def versions = version.split('\\.')
    def major = versions[0]
    def minor = versions[0] + '.' + versions[1]
    def patch = version.trim()
    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
        app.push("latest")
        app.push(major)
        app.push(minor)
        app.push(patch)
    }
  }

}