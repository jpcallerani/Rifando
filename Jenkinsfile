pipeline {
  agent any
  parameters {
    string(name: 'tomcat_dev', defaultValue: '18.223.124.227', description: 'servidor de QA')
    string(name: 'tomcat_prod', defaultValue: '18.188.45.204', description: 'servidor de PROD')
  }
  
stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }

        stage ('Deployments'){
            parallel{
                stage ('Deploy to Staging'){
                    steps {
                        sh "scp -i C:/Users/Jp-PC/Desktop/tomcat-demo.pem **/target/*.war ec2-user@${params.tomcat_dev}:/var/lib/tomcat8/webapps"
                    }
                }

                stage ("Deploy to Production"){
                    steps {
                        sh "scp -i C:/Users/Jp-PC/Desktop/tomcat-demo.pem **/target/*.war ec2-user@${params.tomcat_prod}:/var/lib/tomcat8/webapps"
                    }
                }
            }
        }
    }
}
