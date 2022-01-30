pipeline {
  agent any
  stages{
    stage('init'){
      steps{
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
