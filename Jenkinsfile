node {
      stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
   
    stage("Docker build"){
    sh 'docker build -t claims.api:latest -f Dockerfile .'
        sh 'docker image ls'
    }
withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'test', usernameVariable: 'apurva09', passwordVariable: 'password']]) {
        sh 'docker login -u apurva09 -p $password'
	}
    stage("Pushing Image to Docker Hub"){
	     sh 'docker tag claims.api apurva09/claims.api:latest'
	   sh 'docker push apurva09/claims.api:latest'
    }
	
 stage("SSH Into Server") {
    def remote = [:]
    remote.name = 'VMububtu18.0'
    remote.host = '20.163.181.235'
    remote.user = 'azureuser'
    remote.password = 'Miracle@1234'
    remote.allowAnyHosts = true
}
 stage('BuildInside') {
         docker.image('claims.api').withRun('-d=true -p 9000:9000') 
         sh "ls"
            }
       }

