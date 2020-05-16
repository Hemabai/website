node('Slave1') {
    checkout scm   
    stage('Container deploy') {
              //  ** Deploy a sample container **
              sh label: 'dev', script: 'sudo docker run -it -d ubuntu '
    }
}                  
