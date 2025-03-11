pipeline {
    agent { dockerfile true }
    stages {
        stage('Clone') {
            steps {
                sh 'sh -x scripts/clone.sh'
            }
        }
        stage('Build an e2e proof for Groth16 and test it.') {
            steps {
                sh 'sh -x scripts/test_e2e_groth16.sh'
            }
        }
        stage('Build the benchmark and run it.') {
            steps {
                sh 'sh -x scripts/test_benchmark.sh.sh'
            }
        }
    }
}
