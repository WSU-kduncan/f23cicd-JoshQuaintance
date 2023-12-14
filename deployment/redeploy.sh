#! /bin/bash

sudo docker stop prod-website

sudo docker pull joshquaintance/sveltekit-template:latest

sudo docker run -d -p 80:80 --rm --name prod-website joshquaintance/sveltekit-template

