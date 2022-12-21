node{
    
    stage("Git Clone"){

        git branch: 'main', url: 'https://github.com/jsilaparasetti/claims.git'
    }
stage('Build Project'){
        def mvnHome = tool name: 'maven', type: 'maven'
          sh "$(pwd)"/customer.API:/usr/src/mymaven -w /usr/src/mymaven maven:latest mvn clean package
          echo "Executed Successfully Project1"
    }
}
