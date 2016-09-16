node {
	stage ('Stage Check Out')
	{
	    checkout scm
	    sh 'git config user.email "bappa21@gmail.com"'
	    sh 'git config user.name  "bappadityadasibm"'
    }
    //stage 'Stage Build'
    //    echo 'Starting Build Stage'
     //   sh "./build-all.sh"

     //   stage('Test') {
     //  echo 'Test Stage'
     //  }

	// stage('Publish') {

	// echo 'Publishing to Artifactory'
	// sh "./publish-all.sh"
	// }

	stage ('Release')
	{
	    echo 'Releasing Now Only..'
	    def release_command = "./release.sh " + release_type
	    echo 'Release Command=' + release_command
	    sh "$release_command"

	}
}
