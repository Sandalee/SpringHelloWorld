pipeline{

	agent {
		dockerfile true
	}
	stages{
		stage('Build'){
			steps{
					
				echo 'building...!'
				sh 'make'
				archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 

			}
		}
		stage('Deploy'){
			steps{
				echo 'deploying...'
				
			}
		}
	}

}
