pipeline {     
    agent any      
       stages { 
         stage('BuildingPneumoniaPrectionPod'){   
           steps {                   
           sh 'sudo /usr/bin/kubectl create deployment pneumoniapredictor  --image=aniketsantra25/pneumonia_predictor:v1'
           sh 'sudo /usr/bin/kubectl expose deployment pneumoniapredictor --type=NodePort  --port=4444'                          
           sh 'sudo /usr/bin/kubectl get pod -o wide'                                
    }       
 }         
       stage('gettingpod'){   
           steps {                     
              sh 'sudo /usr/bin/kubectl get pod '                  
              sh 'sudo /usr/bin/kubectl get svc'           
          } 
       }   
 }
}
