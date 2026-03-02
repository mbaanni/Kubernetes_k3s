helm repo add gitlab http://charts.gitlab.io/
helm repo update
kubectl create ns gitlab
helm install gitlab gitlab/gitlab -n gitlab -f gitlab-values.yaml


installatino curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4
chmod 700 get_helm.sh
./get_helm.sh


argocd app create guestbook 
    --repo https://github.com/argoproj/argocd-example-apps.git 
    --path guestbook 
    --dest-server https://kubernetes.default.svc 
    --dest-namespace default

argocd app create my-app \
  --repo https://github.com/mbaanni/Kubernetes_k3s.git \
  --path p2 \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default
argocd app get my-app
argocd app sync my-app


curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64

kubectl port-forward svc/argocd-server -n argocd 8080:443

argocd login localhost:8080 --username admin --password <password> --insecure

kubectl -n argocd get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d

jYUKBhKhDisWe6tH


Hi! My name is mohamed baani . I’ve built my career developing strong skills in backend development, API integrations, and building scalable systems.

I take pride in being analytical,and persistent when solving complex technical problems. I enjoy optimizing systems and making processes more efficient and reliable.

I look forward to demonstrating how I can bring value to your company through clean architecture, automation, and high-quality development work.