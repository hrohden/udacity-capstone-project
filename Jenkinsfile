node {

    stage ('Build') {

    git url: 'https://github.com/hrohden/udacity-capstone-project'

    withMaven(maven: 'maven-3')

      // Run the maven build
      sh "mvn clean compile"

    }
  }

}