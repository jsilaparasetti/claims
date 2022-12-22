node{
   stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t ineeladri/claims.api_image:latest -f Dockerfile .'
        sh 'docker image ls'
    }
   withCredentials([string(credentialsId: 'ineeladri', variable: 'Miracle#12')]) {
        sh 'docker login -u ineeladri -p $Miracle#12'
    }

} 
