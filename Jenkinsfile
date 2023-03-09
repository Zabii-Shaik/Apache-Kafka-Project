pipeline {
    agent any
    parameters {
        choice(name: 'action', choices: 'apply\ndestroy', description: 'Choose whether to apply or destroy terraform infrastructure?')
    }
    stages {
        stage('Code Commit') {
            steps {
                git branch: 'main', credentialsId: 'ac32141a-2d49-49da-bf15-aa006e5856f4', url: 'https://gitlab.com/shaikismailzabiulla/apache_kafka_terraform_infra.git'
            }
        }
        stage('Terraform Configuration Initialization') {
            input {
                message "Do you want to Initialize?"
            }
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Configuration Format') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage('Terraform Configuration Validation') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform Configuration Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Configuration Action') {
            input {
                message "Do you want to apply/destroy?"
            }
            steps {
                script {
                    if (params.action == "apply") {
                        sh 'terraform apply -auto-approve'
                    }
                    else if (params.action == "destroy") {
                        sh 'terraform destroy -auto-approve'
                    }
                    else {
                        error("Invalid Terraform Action: ${params.action}. Must be either 'apply' or 'destroy'.")
                    }
                }
            }
        }

    }
    post {
        success {
            slackSend channel: 'jenkins_', message: 'Build is Success'
            emailext body: 'Build is Success', subject: 'Jenkins Console Output', to: 'shaik.zabiulla0@gmail.com'
        }
        failure {
            slackSend channel: 'jenkins_', message: 'Build is Failed'
            emailext body: 'Build is Failed', subject: 'Jenkins Console Output', to: 'shaik.zabiulla0@gmail.com'
        }
    }
}
