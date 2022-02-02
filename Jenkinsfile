pipeline {
  agent any
  stages{
    stage('checkout'){
    steps{
         echo 'checkout'
        git branch: 'main', url: 'https://github.com/doskochynskyi/Jenkins.git'
        //git 'https://github.com/doskochynskyi/Jenkins.git'
      }
    }
    stage('init'){
      steps{
         echo 'init'
        //sh label: '', script: 'terraform init'       
        //sh 'terraform init'
        //sh label: '', script: 'terraform init'
        bat 'terraform init'
        bat 'terraform plan'
      }
    }
    stage('apply'){
      steps{
         echo 'apply'
        bat 'terraform apply --auto-approve'
      }
    }
  }
}
