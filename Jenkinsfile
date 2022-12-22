node{
   stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t apurva09/claims.api_image:latest -f Dockerfile .'
        sh 'docker image ls'
    }
   withCredentials([string(credentialsId: 'apurva09', variable: 'PASSWORD')]) {
        sh 'docker login -u apurva09 -p $PASSWORD'
    }

    stage("Pushing Image to Docker Hub"){
     
       sh 'docker push apurva09/claims.api_image:latest'
       }
}

   
