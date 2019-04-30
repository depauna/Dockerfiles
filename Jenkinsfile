def buildDockerfile(img_name) {
    sh "./build.sh $img_name depauna"
    withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerNatan', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
        sh "./push.sh $img_name depauna $USERNAME $PASSWORD"
    }
}

pipeline {
    agent any
    stages {
        stage('Build base container') {
            steps {
                buildDockerfile('base')
            }
        }
        stage('Build jdk8 container') {
            steps {
                buildDockerfile('jdk8')
            }
        }
        stage('Build maven container') {
            steps {
                buildDockerfile('maven')
            }
        }
        stage('Build nvm container') {
            steps {
                buildDockerfile('nvm')
            }
        }
        stage('Build httpd container') {
            steps {
                buildDockerfile('apache')
            }
        }
    }
}
