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
				sh 'mvn clean compile'
				archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
			}	
		}

	}	
	
}

