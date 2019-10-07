pipeline {


  environment {
    registry = "hrohden/udacitycapstone"
    registryCredential = "docker-hub"
  }

  stages {
    def app

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
      steps{
        script {
          docker.withRegistry('https://registry.hub.docker.com', registryCredential) {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
          }
        }
      }
    }
  }

}