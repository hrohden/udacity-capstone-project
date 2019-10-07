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
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

}