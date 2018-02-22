pipeline{
	agent any 
	stages{
	
		stage('clone repository'){
			steps{
				checkout scm
			}
			
		}

		stage('Build Source'){
			steps {
                		sh 'make' 
                		archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            		}
		
		}

		stage('Build Image'){
			steps{
				app = docker.build("SpringHelloworld/src/")
			}
			
		}

		stage('push image'){
			steps{
				docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
				app.push("${env.BUILD_NUMBER}")
				app.push("latest")
				}
			}
			
		}
	
	}	
	
}

