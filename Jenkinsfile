node {
      stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t apurva09/claims:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'apurva09', passwordVariable: 'password')]) {
     sh 'docker login -u apurva09 -p ${password}'
	}
    stage("Pushing Image to Docker Hub"){
	  
        sh 'docker tag  1abac3823d5d apurva09/claims:latest'
	  sh 'docker push apurva09/claims:latest'
    }
}


  
