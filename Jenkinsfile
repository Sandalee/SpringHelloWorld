node{
	def app
 
	stages{
	
		stage('clone repository'){
			
				checkout scm
			
			
		}

		stage('Build Source'){
			
                		sh 'mvn package' 
                		archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            		
		
		}

		stage('Build Image'){
			
				app = docker.build("SpringHelloworld/src")
			
			
		}

		stage('push image'){
			
				docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
				app.push("${env.BUILD_NUMBER}")
				app.push("latest")
				}
			
			
		}
	
	}	
	
}

