pipeline{
	
	agent  any 
 
	stages{
	
		stage('clone repository'){
			steps{
				checkout scm
			}
					
		}

		stage('Build Source'){
			steps{
				echo 'building...'
				archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
			}	
		}

	}	
	
}

