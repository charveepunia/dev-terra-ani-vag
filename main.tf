provider "kubernetes" {
    config_context_cluster = "minikube"
   # host = ""
    

}

resource "kubernetes_pod" "hostname" {
  metadata {
    name = "hostname"
  }

  
  spec {
    container {
      image = "charvee11/hostnameingo:latest"
      name  = "hostname"

      port {
        container_port = 8080
      }

}
}
}
