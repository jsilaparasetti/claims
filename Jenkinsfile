node {
      stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t apurva09/claims_image:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'apurva09', passwordVariable: 'Apurva@09')]) {
  sh 'echo $apurva09'
  echo password
  echo "username is $apurva09"
	}
    stage("Pushing Image to Docker Hub"){
        sh 'docker tag 518b08410256 apurva09/claims.api:latest'
	    docker login -u "apurva09" -p "Apurva@09" docker.io
		 sh 'docker push apurva09/claims.api:latest'
    }
}


  
