node {
	stage 'Stage Check Out'
	checkout scm
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
}
