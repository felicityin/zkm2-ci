pipeline {
    agent { dockerfile true }
    stages {
        stage('Clone') {
            steps {
                sh 'sh -x clone.sh'
            }
        }
        stage('Build Go and test') {
            steps {
                sh 'sh -x test_go.sh'
            }
        }
        stage('Build rust and test') {
            steps {
                sh 'sh -x test_rust.sh'
            }
        }
        stage('Build precompile and test') {
            steps {
                sh 'sh -x test_precompile.sh'
            }
        }
    }
}
