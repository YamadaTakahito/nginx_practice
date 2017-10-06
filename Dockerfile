# from https://qiita.com/meidaimae/items/a982f4337cf7e44bef3b
FROM centos:7
RUN yum -y update && \

   #nginxリポジトリ追加
   rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm && \
   #nginxインストール
   yum install nginx -y


EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
