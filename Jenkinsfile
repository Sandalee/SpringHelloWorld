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
				withMaven(maven : 'maven_3_5_0'){
						sh 'mvn clean compile'
						archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
				
				}
			}	
		}


	
	}	
	
}

