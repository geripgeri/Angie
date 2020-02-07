String cron_string = BRANCH_NAME == "master" ? "@hourly" : ""

pipeline {
    triggers { cron(cron_string) }

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
		sh "cd /usr/src/homeassistant && python -m homeassistant --config $WORKSPACE --script check_config"
            }
        }
    }
}
