pipeline {
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
		sh 'mv secrets-example.yaml secrets.yaml'
		sh "cd /usr/src/app && python -m homeassistant --config $WORKSPACE --script check_config"
            }
        }
    }
}
