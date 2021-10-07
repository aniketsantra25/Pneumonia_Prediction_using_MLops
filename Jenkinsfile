pipeline {     
    agent any      
       stages { 
         stage('BuildingHeartPrectionPod'){   
           steps {                   
           sh 'sudo kubectl create deployment pneumoniapredictor  --image=aniketsantra25/pneumonia_predictor:v1   --kubeconfig /root/admin.conf'
           sh 'sudo kubectl expose deployment pneumoniapredictor --type=NodePort  --port=4444   --kubeconfig /root/admin.conf'                          
           sh 'sudo kubectl get pod -o wide   --kubeconfig /root/admin.conf'                                
    }       
 }         
       stage('gettingpod'){   
           steps {                     
              sh 'sudo kubectl get pod -o wide  --kubeconfig /root/admin.conf'                  
              sh 'sudo kubectl get svc    --kubeconfig /root/admin.conf'           
          } 
       }   
 }
}
