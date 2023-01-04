node {
      stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t claims:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'apurva09', passwordVariable: 'password')]) {

	}
    stage("Pushing Image to Docker Hub"){
	  
        sh 'docker tag  53231807e12d apurva09/claims:latest'
	sh 'echo $DOCKER_password | docker login -u $DOCKER_apurva09 --password-stdin'
	  sh 'docker push apurva09/claims:latest'
    }
}
