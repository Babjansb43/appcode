pipeline {
    agent any
    stages{
        // stage("checkout") {
        //     steps{
        //         sh 'checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[url: 'git@github.com:Babjansb43/appcode.git']]])']]])'
        //     }
        // }
        stage("image build") {
            steps {
                sh '''
                sudo docker build -t image:$BUILD_NUMBER .
                sudo docker push 301712948359.dkr.ecr.ap-southeast-1.amazonaws.com/image:$BUILD_NUMBER
                '''
            }
        }
    }
}