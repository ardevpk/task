pipeline{
    agent any
    stages {
        stage('Setup Python Virtual ENV'){
            steps  {
            sh '''
            chmod +x envsetup.sh
            ./scripts/envsetup.sh
            '''
            }
        }
        stage('Setup Gunicorn'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./scripts/gunicorn.sh
                '''
            }
        }
        stage('Setup NGINX'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./scripts/nginx.sh
                '''
            }
        }
    }
}