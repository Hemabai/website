node('Slave1') {
    checkout scm   
    stage('Container deploy') {
              //  ** Deploy a sample container **
              sh label: 'mstr', script: 'sudo docker run -it -d ubuntu '
    }
    stage('Rm old Container') {
              // ** Delete previous containers **
              sh label: 'mstr', script: 'sudo docker rm -f $(sudo docker ps -a -q)' 
    }    
    stage('Build image') {
              // ** Build new image from dev dockerfile **
              sh label: 'mstr', script: 'sudo docker build /home/ubuntu/jenkins/workspace/Build_website_master -t websitemstr'
    }
    stage('Dply new image container') {
              // ** Deploy container from new image **
              sh label: 'mstr', script: 'sudo docker run -it -d -p=90:80 websitemstr'
    }   
    stage('Record FP')) {
              fingerprint ''
    }    
}        
