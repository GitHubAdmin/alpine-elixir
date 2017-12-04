VERSION := 1.5.2
NAME := providigm/alpine-elixir

img:
	docker build -f Dockerfile --rm -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)