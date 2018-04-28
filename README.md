# spring-cloud-bus-demo
A simple demo for Spring Cloud Bus . 

## how to use 

### rabbitMQ in Docker 

#### install and run rabbitmq in docker 

* first of all , we need to set up rabbitMQ's image in docker , just simple run 

        docker pull docker pull rabbitmq:3-management
        
    or you can simple use ./build-image.sh
    
* secondly , we need to make a container for rabbitMQ in docker , i've make this done in docker-compose.yml

      rabbitmq:
        image: rabbitmq:3-management
        restart: always
        container_name: rabbitmq
        hostname: rabbitmq
        environment:
          RABBITMQ_DEFAULT_USER: "springcloud"
          RABBITMQ_DEFAULT_PASS: "123456"
        ports:
          - "5672:5672"
          - "15672:15672"

    you can update the values of environment.
    
    plz pay attention , this is the simplest configuration. 
    
    I do not recommend using it in a production environment.          

#### config rabbitmq to make data saved 



### examples 



