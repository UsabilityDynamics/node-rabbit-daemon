
### Client "udx"

    // Create Data Storage

    // Uses default 3306 port, we can just link it
    docker run -d \
      --name="test-config" \
      -v /root/www:/www \
      quay.io/usabilitydynamics/base-centos


    // Uses default 3306 port, we can just link it
    docker run \
      --name="mysql.uds.io" \
      -v /home/udx/var/db:/var/lib/mysql
      -d \
      tutum/mysql



docker run -d -p 80:2368 -v /data -e GHOST_URL=http://my-ghost-blog.com orchardup/ghost

      // source https://registry.hub.docker.com/u/orchardup/mysql/

      docker run -d -p 3306:3306 \
        -e MYSQL_ROOT_PASSWORD=xehVg1IpVhEmlwRMG \
        -e MYSQL_DATABASE=my_db \
        -e MYSQL_USER=my_db \
        -e MYSQL_PASSWORD=my_db \
        -e MYSQLD_ARGS=my_db \
        orchardup/mysql

git@github.com:dockerfile/ghost.git

       docker run -d
        -p 80:2368 \
        -v /home/udx/var/ghost:/ghost-override \
        dockerfile/ghost
