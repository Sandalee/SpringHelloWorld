node{
	def app	
	stage('clone repository'){
		checkout scm
	}

	stage('Build Image'){
		app = docker.build("SpringHelloworld/src/")
	}

	stage('push image'){
		docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		}
	}
}

