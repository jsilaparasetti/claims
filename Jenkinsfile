node {
      stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t claims:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'test', usernameVariable: 'apurva09', passwordVariable: 'password']]) {
        sh 'docker login -u apurva09 -p $password'
	}
    stage("Pushing Image to Docker Hub"){
	     sh 'docker tag fbb841198676 apurva09/claims:latest'
	   sh 'docker push apurva09/claims:latest'
    }
 stage('Run Docker container on remote hosts') {
steps {
sh "docker -H ssh://azure_practice@172.174.113.233 run -d -p 9000:9000 apurva09/claims"
}
}
}
