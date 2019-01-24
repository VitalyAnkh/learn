SQL_CID = $(docker create -e MYSQL_ROOT_PASSWORD=ch2demo mysql)

docker start $SQL_CID

MAILER_CID=$(docker create dockerinaction/ch2_mailer)
docker start $MAILER_CID

WP_CID = $(docker create --link $SQL_CID:mysql -p 80 \
	-v /run/lock/apache2/ -v /run/apache2/ \
	--read-only wordpress)

docker start $WP_CID

AGENT_CID = $(docker create --link $WP_CID:insideweb \
	--link $MAILER_CID:insidemailer \
	dockerinaction/ch2_agent)

docker start $AGENT_CID
