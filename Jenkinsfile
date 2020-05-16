node('Slave1') {
    checkout scm   
    stage('Container deploy') {
              //  ** Deploy a sample container **
              sh label: 'dev', script: 'sudo docker run -it -d ubuntu '
    }
    stage('Rm old Container') {
              // ** Delete previous containers **
              sh label: 'dev', script: 'sudo docker rm -f $(sudo docker ps -a -q)' 
    }    
    stage('Build image') {
              // ** Build new image from dev dockerfile **
              sh label: 'dev', script: 'sudo docker build /home/ubuntu/jenkins/workspace/Build_website_develop -t websitedev'
    }
    stage('Dply new image container') {
              // ** Deploy container from new image **
              sh label: 'dev', script: 'sudo docker run -it -d -p=90:80 websitedev'
    }     
}           
