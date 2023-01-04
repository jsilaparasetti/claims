node {
      stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t apurva09/claims_image:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'apurva09', passwordVariable: 'password')]) {

	}
    stage("Pushing Image to Docker Hub"){
	  
        sh 'docker tag 1abac3823d5d apurva09/apurva09/claims_image:latest'
		sh 'docker login -u $DOCKER_apurva09 -p $DOCKER_password'
	  sh 'docker push apurva09/apurva09/claims_image:latest'
    }
}
