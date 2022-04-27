pipeline {
    agent any
    environment { 
                AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
                AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY') 
            }
    stages {
        stage('verify clone') {
            steps {
                sh 'ls -l'
                sh 'pwd'
            }
        }
        stage('terraform init') {
            steps {
                sh "docker run --rm -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY  -v ${PATH_HOST}/workspace/deploy:/code -w /code terraform:latest terraform init"
            }
        }
        stage('terraform plan') {
            steps {
                sh "docker run --rm -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY  -v ${PATH_HOST}/workspace/deploy:/code -w /code terraform:latest terraform plan -out tfplan"
            }
        }
        stage('terraform apply') {
            steps {
                sh "docker run --rm -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY  -v ${PATH_HOST}/workspace/deploy:/code -w /code terraform:latest terraform apply tfplan"
            }
        }
    }
}