node {
      stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t apurva09/claims_image:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([string(credentialsId: 'test', usernameVariable: 'apurva09', passwordVariable: 'password')]) {
        sh 'docker login -u apurva09 -p $password'
	}
    stage("Pushing Image to Docker Hub"){
	   sh 'docker push apurva09/claims-img:latest'
    }
}
