# Get child images

docker inspect --format='{{.Id}} {{.Parent}}' \
    $(docker images --filter since=f50f9524513f --quiet)
    
pip install docker-squash;


    
