node {
	stage 'Stage Check Out'
	checkout scm
	sh 'git config user.email "bappa21@gmail.com"'
	sh 'git config user.name  "bappadityadasibm"'
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
	    echo 'Releasing Now'
	   // sh "./release.sh"

       sh 'cd microservices/composite/product-composite-service'
       sh './gradlew release -Prelease.useAutomaticVersion=true -Prelease.releaseVersion=1.0.0 -Prelease.newVersion=1.1.0-SNAPSHOT'
	}
}
