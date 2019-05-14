gpipeline {
    agent {
	label 'docker'
    }
    
    stages {	
        stage('Verify Config') {
            agent {
                docker {
		    image 'homeassistant/home-assistant:latest'
		}	
            }
	    
            steps {
		sh "cd /usr/src/app && python -m homeassistant --config $WORKSPACE --script check_config"
            }
        }
    }
}
