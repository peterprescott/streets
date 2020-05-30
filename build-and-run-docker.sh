docker build -t peterprescott/geodatascience:0.2.2 .
docker run -it -p 8888:8888 -v $PWD:/home/jovyan/work peterprescott/geodatascience:0.2.2
