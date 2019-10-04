node {

  withMaven(maven: 'maven') {

    stage('Checkout') {
      git url: 'https://github.com/hrohden/udacity-capstone-project'
    }

    stage('Build') {
      sh "mvn clean compile"
    }

  }

}