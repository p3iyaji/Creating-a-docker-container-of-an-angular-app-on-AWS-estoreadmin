pipeline {
  agent any
  tools{
    maven 'MAVEN'
  }
  stages{
      stage("Clone the project") {
          steps{
            git branch: 'main', url: 'https://github.com/p3iyaji/estoreadmin.git'
          }
      }

      stage("build docker image") {
          steps{
              script{
                sh 'docker build -t estorefrontjenapp .'
              }

          }

      }

      stage("create container"){
          steps{
              script{
                sh 'docker run -d -p 4200:4200 --name estorefrontendjen estorefrontjenapp:latest'
              }

          }
      }
    }


}
