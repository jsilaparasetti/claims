node{
    
    stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
stage('Build Project'){
        def mvnHome = tool name: 'maven', type: 'maven'
          sh "${mvnHome}/bin/mvn package"
          echo "Executed Successfully Project1"
    }
}
