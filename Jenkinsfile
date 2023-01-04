node{
   stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t apurva09/claims_image:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'apurva09', passwordVariable: 'password')]) {
  sh 'echo $apurva09'
  echo password
  echo "username is $apurva09"
}

    stage("Pushing Image to Docker Hub"){
        sh 'docker tag claims_image:latest apurva09/claims_image:latest'
       sh 'docker push apurva09/claims_image:latest'
    }
}

  
