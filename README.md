# MULTI-K8S

Este projeto foi construído como aprendizagem de kubernetes seguindo as aulas descritas no curso **Docker and Kubernetes: The Complete Guide** de **Stephen Grider** na Udemy.

Para uso local desse projeto é necessário as seguintes configurações:
- Docker (Seguir a instalação conforme [documentação do Docker](https://docs.docker.com/get-docker/) em acordo com o SO)
- VM (HyperV ou VirtualBox)
- Kubectl ([Link da documentação para instalação](https://kubernetes.io/docs/tasks/tools/install-kubectl/))
- Minikube (E [documentação para instalação do minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/), caso esteja no Windows 10 basta ativar o kubernetes no Docker-Desktop).

Por fim deve também ter instalado o NGINX Ingress Controller vendor kubernetes, instalação pode ser [seguida aqui](https://kubernetes.github.io/ingress-nginx/deploy/). Para Windows 10 usar o camando descrito para o Mac OS (ps.: hoje dia 24/05/2020 só está disponível versão para Mac pode ser que adicionanem para Windows 10 posteriormente).

Após está de acordo com todos os requisitos acima seguir os seguintes procedimentos:
- Criar secret no kubernetes para acesso ao postgres executando o seguinte comando: **kubectl create secret generic pgpassword --from-literal PGPASSWORD=123456**
- Adicionar os comandos para adição das imagens docker para o cluster do kubernetes, executando: **kubectl apply -f k8s**

Certifique-se de está dentro do diretório multi-k8s para executar o comando acima. Para verificar se as imagens estão rodando executar o comando: **kubectl get pods**

Após certificar que o processo está completo, veja no browser a aplicação de exemplo rodando. Para isso veja o endereço de IP do minikube executando **minikube ip** e jogando o endereço no browser. No windows 10, caso esteja usando Docker-Desktop, bastar jogar https://localhost no barra de endereços do browser de preferência.

Para maiores detalhes recomendo adquirir o curso do Stephen Grider. 

Valeu!!!