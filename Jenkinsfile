node('Slave1') {
    checkout scm   
    
    stages {
          stage('Container deploy') 
             {
              step {
                     sh label: 'dev', script: 'sudo docker run -it -d ubuntu '
                   }
             }       
            }  
}
