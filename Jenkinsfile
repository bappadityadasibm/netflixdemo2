node {
	stage ('Stage Check Out')
	{
	    checkout scm
	    sh 'git config user.email "bappa21@gmail.com"'
	    sh 'git config user.name  "bappadityadasibm"'
    }

    stage ('Stage Build')
    {
        def  build_command = "./build-all.sh"
        echo 'Build Command=' + build_command
        echo 'Starting Build Stage'
        sh "$build_command"

    }

    stage('Test') {
        echo 'Test Stage'
    }



	stage ('Release')
	{
	    echo 'Releasing Now Only..'
	    def release_command = "./release.sh " + release_type
	    echo 'Release Command=' + release_command
	    sh "$release_command"

	}

}
