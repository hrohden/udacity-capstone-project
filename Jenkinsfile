node {

  // maven(maven: 'maven') {

    stage('Checkout') {
      git url: 'https://github.com/hrohden/udacity-capstone-project'
    }

    stage('Build') {
      sh "./mvnw clean package"
    }

  // }

}