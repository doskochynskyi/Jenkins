pipeline {
  agent any
  stages{
    stage('init'){
      steps{
         echo 'init'
        sh label: '', script: 'terraform init'       
      }
    }
    stage('build'){
      steps{
        echo 'build'
      }  
    }
  }
}
