node{
   stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t ineeladri/claims.api_image:latest -f Dockerfile .'
        sh 'docker image ls'
    }
   withCredentials([string(credentialsId: 'dockerhub', variable: 'PASSWORD')]) {
        sh 'docker login -u dockerhub -p $PASSWORD'
    }

} 
