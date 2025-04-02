pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage('Build') {
            steps {
                echo 'building the application....'
            }
        }
        stage('Test') {
            steps {
                echo 'testing the application....'
            }
            post{
                echo 'emailing test results to developer'
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploying application......'
            }
        }
    }
}