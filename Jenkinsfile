node {

    stage ('Build') {

    git url: 'https://github.com/hrohden/udacity-capstone-project'

    withMaven(
        // Maven installation declared in the Jenkins "Global Tool Configuration"
        maven: 'maven-3',

      // Run the maven build
      sh "mvn clean compile"

    }
  }

}