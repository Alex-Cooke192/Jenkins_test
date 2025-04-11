pipeline {
    agent any
    environment {
    python = "C:/Users/alexa/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Python_3.13/Python/python.exe"
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the project...'
                echo python 
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
                bat "\"${python}\" hello_world.py"
                // Add your deployment commands here, for example using PowerShell or batch scripts.
                //bat 'echo Deploying application'
            }
        }
    }

    post {
        success {
            emailext(
                subject: 'Build Successful!',
                body: """
                    The build for branch {BRANCH_NAME} was successful!
                    Build number: {BUILD_NUMBER}
                """,
                to:"30250508@blackpool.ac.uk"
            )
        }
        always {
            echo 'This will run after all stages, no matter what.'
            emailext(
                subject: 'Testing email: Always sends', 
                body: """
                    Frog.......ribbit! 
                    """, 
                to: "alexander.cooke76@outlook.com" 
            )
        }
    }
}
