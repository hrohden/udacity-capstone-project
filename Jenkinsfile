node {

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
    sh "docker build -t hrohden/udacitycapstone ."
  }

}