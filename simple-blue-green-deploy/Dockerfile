FROM ubuntu:13.10

MAINTAINER foostan foostan27@gmail.com

RUN apt-get update
RUN apt-get install -y ruby ruby-sinatra

EXPOSE 8080
CMD ruby -rsinatra -e 'set :port, 8080; set :public_folder, "./"; set :environment, :producntion; get("/"){ `hostname` }'
