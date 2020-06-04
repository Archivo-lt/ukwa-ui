pipeline {
  agent none
  stages {
    stage('build') {
      steps {
        echo 'Build smth? JAR? Docker image?'
      }
    }

    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            echo 'Hi test'
          }
        }

        stage('Robot FW') {
          steps {
            echo 'Robot FW'
          }
        }

        stage('Integration tests') {
          steps {
            echo 'Integration tests'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy'
      }
    }

    stage('Test against Standards') {
      steps {
        echo 'Test WCAG'
      }
    }

  }
}