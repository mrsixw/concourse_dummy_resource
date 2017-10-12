# Concourse Dummy Resource
Custom [concourse.ci](https://concourse.ci/ "concourse.ci Homepage") [resource](https://concourse.ci/implementing-resources.html "Implementing a resource") to test your infrastructure.

## Example yaml
    resource_types:
    - name: dummy
      type: docker-image
      source:
        repository: mrsixw/concourse_dummy_resource
        tag: latest
        
    resources:
    - name: dummy
      type: dummy

# Build
In the current directory 

    docker build . -tag mrsixw/concourse_dummy_resource
    docker push mrsixw/concourse_dummy_resource

**Note** If the resigtry is insectured, your docker deamon needs to be configured with an insecure registry entry. See [here](https://docs.docker.com/registry/insecure/ "Docker insecure registry")
