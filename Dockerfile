FROM centos:7
RUN yum upgrade -y
COPY daftaupe-hugo-epel-7.repo /etc/yum.repos.d/hugo.repo
RUN yum install -y hugo 
