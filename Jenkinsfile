node(label:'Docker_Machine'){
   stage('SCM Checkout'){
       git credentialsId: 'git-creds', url: 'https://github.com/Haswanth007/Docker.git'
   }
   stage('Build Docker Image'){
     sh 'sudo docker build -t hassy0071/my-image:$BUILD_NUMBER .'
   }
   stage('Push Docker Image'){
       
    withCredentials([string(credentialsId: 'docker_pass', variable: 'Docker_key')]) {
        sh "sudo docker login -u hassy0071 -p ${Docker_key}"
     }
     sh 'sudo docker push hassy0071/my-image:$BUILD_NUMBER'
   } 
}
