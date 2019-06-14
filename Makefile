OWNER=pydio
IMG_NAME=ldap-for-testing

NAME=$(OWNER)/$(IMG_NAME)

# simply insures targets are never cached: "a phony target is simply a target that is always out-of-date"...
.PHONY: clean build build-nocache publish set-tiny-tag tiny

clean:
	@rm -rf ./bootstrap/ldif 

build: clean
	@cp -R ./assets/$(TAG)/ldif ./bootstrap/ldif 
	docker build -t $(NAME):$(TAG) --rm .

build-nocache: clean
	@cp -R ./assets/$(TAG)/ldif ./bootstrap/ldif 
	docker build -t $(NAME):$(TAG) --no-cache --rm .

publish: build ## push to Docker 
	@docker login
	#docker push $(NAME):$(TAG)
	@echo 'published $(NAME):$(TAG)'

tiny: TAG=tiny
tiny: build publish

medium: TAG=medium
medium: build publish
