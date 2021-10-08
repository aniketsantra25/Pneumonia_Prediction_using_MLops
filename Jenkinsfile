pipeline {     
    agent any      
       stages { 
         stage('BuildingPneumoniaPrectionPod'){   
           steps {                   
           sh 'sudo kubectl create deployment pneumoniapredictor  --image=aniketsantra25/pneumonia_predictor:v1'
           sh 'sudo kubectl expose deployment pneumoniapredictor --type=NodePort  --port=4444'                          
           sh 'sudo kubectl get pod -o wide'                                
    }       
 }         
       stage('gettingpod'){   
           steps {                     
              sh 'sudo kubectl get pod '                  
              sh 'sudo kubectl get svc'           
          } 
       }   
 }
}
