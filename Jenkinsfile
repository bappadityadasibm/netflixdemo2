node {
	stage 'Stage Check Out'
	checkout scm
	sh 'git config user.email "bappa21@gmail.com"'
	sh 'git config user.name  "bappa"'
	//sh 'git submodule update --init'
        stage 'Stage Build'
        echo 'Starting Build Stage'
        //dir('blog-microservices') {
        // some block
        //}
        sh "./build-all.sh"
        
        stage('Test') {
        echo 'Test Stage'
        }

	stage('Publish') {

	echo 'Publishing to Artifactory'
	sh "./publish-all.sh"
	}

	stage ('Release')
	{
	    echo 'Releasing'
	    sh "./release.sh"

	}
}
