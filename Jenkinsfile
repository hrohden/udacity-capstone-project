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
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            app.push("latest")
        }
    }

}