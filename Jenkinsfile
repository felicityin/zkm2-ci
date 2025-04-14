pipeline {
    agent { dockerfile true }
    stages {
        stage('Clone') {
            steps {
                sh 'sh -x scripts/clone.sh'
            }
        }
        stage('Build the benchmark and run it.') {
            steps {
                sh 'sh -x scripts/run_benchmark.sh'
            }
        }
        stage('Generate Groth16 and PLONK proofs for the Fibonacci guest program.') {
            steps {
                sh 'sh -x scripts/run_e2e.sh'
            }
        }
    }
}
