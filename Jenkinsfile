pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Choose ENV')
        choice(name: 'Action', choices: ['apply', 'destroy'], description: 'Choose Action')
    }

    stages {
        stage('Terraform Init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
        stage('Terraform plan') {
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
        stage('terraform Apply') {
            steps {
                sh "terraform ${Action} -var-file=env-${ENV}/${ENV}.tfvars -auto-approve"
            }
        }
    }
}

