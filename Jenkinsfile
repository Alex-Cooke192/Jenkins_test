pipeline {
    agent any
    environment {
    PATH = "C:/Users/alexa/OneDrive/Documents/B&FC Year 1/Jenkins/Jenkins_test;$PATH"
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the project...'
                // Add your build commands here, for example using MSBuild, Maven, etc.
                //bat 'echo Building the project'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add your test commands here, e.g., running unit tests or other test frameworks.
                //bat 'echo Running tests'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                bat 'py hello_world.py'
                // Add your deployment commands here, for example using PowerShell or batch scripts.
                //bat 'echo Deploying application'
            }
        }
    }

    post {
        always {
            echo 'This will run after all stages, no matter what.'
        }
    }
}