node {
	stage ('Stage Check Out')
	{
	    checkout scm
	    sh 'git config user.email "bappa21@gmail.com"'
	    sh 'git config user.name  "bappadityadasibm"'
    }

    stage ('Stage Build')
    {
        def  build_command = "./build-all.sh " + release_type
        echo 'Build Command=' + build_command
        echo 'Starting Build Stage'
        sh "$build_command"
    }

    stage('Test') {
        echo 'Test Stage'
    }

	//stage('Publish') {
    //     def  publish_command = "./publish-all.sh " + release_type
    //     echo 'Publish Command=' + publish_command
	//     echo 'Publishing to Artifactory'
	 //    sh "$publish_command"
	 //}

	stage ('Release')
	{
	    echo 'Releasing Now Only..'
	    def release_command = "./release.sh " + release_type
	    echo 'Release Command=' + release_command
	    sh "$release_command"

	}
}
