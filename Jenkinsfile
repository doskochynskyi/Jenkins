pipeline {
  agent any
  stages{
    stage('init'){
      steps{
        terraform init
      }
    }
    stage('build'){
      steps{
        echo 'build'
      }  
    }
  }
}
