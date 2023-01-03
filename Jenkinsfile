pipeline {
  agent {
        node {
            label 'docker'
        }
    }
    options {
        timestamps()
    }

    environment {

        IMAGE = readMavenPom().getArtifactId()
        VERSION = readMavenPom().getVersion()
    }

    stages {
        stage('Build') {
            agent {
                docker {

                    reuseNode true
                    image 'maven:3.8.5-jdk-17'
                }
            }
            steps {

                withMaven(options: [findbugsPublisher(), junitPublisher(ignoreAttachments: false)]) {
                    sh 'mvn clean findbugs:findbugs package'
                }
            }
            post {
                success {

                    archiveArtifacts(artifacts: '**/target/*.jar', allowEmptyArchive: true)
                }
            }
        }



        stage('Build and Publish Image') {
            when {
                branch 'develop'  //only run these steps on the develop branch
            }
            steps {

                sh """
          docker build -t ${IMAGE} .
          docker tag ${IMAGE} ${IMAGE}:${VERSION}
          docker push ${IMAGE}:${VERSION}

        """
        }
            }
        }
    }

    post {
        failure {

            mail to: 'praneethavattipalli16@gmail.com',
                    subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                    body: "Something is wrong with ${env.BUILD_URL}"
        }
    }
}
