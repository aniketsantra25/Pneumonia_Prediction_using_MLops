pipeline {     
    agent any      
       stages { 
         stage('BuildingPneumoniaPrectionPod'){   
           steps {                   
           sh 'kubectl create deployment pneumoniapredictor  --image=aniketsantra25/pneumonia_predictor:v1   --kubeconfig /root/admin.conf'
           sh 'kubectl expose deployment pneumoniapredictor --type=NodePort  --port=4444   --kubeconfig /root/admin.conf'                          
           sh 'kubectl get pod -o wide   --kubeconfig /root/admin.conf'                                
    }       
 }         
       stage('gettingpod'){   
           steps {                     
              sh 'kubectl get pod -o wide  --kubeconfig /root/admin.conf'                  
              sh 'kubectl get svc    --kubeconfig /root/admin.conf'           
          } 
       }   
 }
}
