all:
	echo 'usage: available command, "docker-build", "docker-push"'

docker-build:
	@docker build -t 9to5/ruby-2.3.4:`cat VERSION` .
docker-push:
	@docker push 9to5/ruby-2.3.4:`cat VERSION`
