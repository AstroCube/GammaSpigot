pipeline {
    agent any
    tools {
        maven 'Maven 3'
        jdk 'JDK8'
    }
    dir('SpigotBungeeBridge') {
            git url: 'https://github.com/AstroCube/Spigot-Bungee-Bridge.git'
    }
    dir('Waterfall') {
        git url: 'https://github.com/AstroCube/Waterfall.git'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }
        stage ('Dependency Build') {
            dir('SpigotBungeeBridge') {
                sh 'mvn clean install'
            }
            dir('Waterfall') {
                sh 'mvn clean install'
            }
        }
        stage('Build') {
            steps {
                            sh './build.sh'
            }
        }
        stage('Publish Artifacts') {
            steps {
                echo 'Save the assemblies generated from the compilation'
            }
        }
    }
}