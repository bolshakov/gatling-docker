version = ${VERSION}
image = bolshakov/gatling

build:
	docker build --rm --tag ${image}:${version} --tag ${image}:latest --build-arg version=${version} .
	docker push ${image}:${version}
