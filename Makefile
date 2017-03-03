VERSION := 1.4.2
NAME := derailed/alpine-elixir

img:
	docker build -f Dockerfile --rm -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)