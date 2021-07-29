node {
    stage('Get Source'){
        git 'https://github.com/Kirtigup/Golang-app.git'
        
    }
    stage('Docker-build'){
        sh 'docker build -t kirtigup/golangImg .'
    }
    stage('Docker-push'){
        docker.withRegistry('https://registry.hub.docker.com','Docker'){
            def customImage = docker.build('kirtigup/golangImg')
            customImage.push()
        }
    }
    
}
