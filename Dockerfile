#FROM mhart/alpine-node:base-6
FROM mhart/alpine-node:6


RUN sed -i -e 's/v3\.4/v3.5/g' /etc/apk/repositories \
        && apk update \
	&& apk upgrade \
        && apk add tzdata \
        && cp /usr/share/zoneinfo/Asia/Singapore /etc/localtime \
        && apk del tzdata \
	&& rm -rf /var/cache/apk/* \
        && echo "Asia/Singapore" > /etc/timezone \
	&&  mkdir -p /usr/src/app 

WORKDIR /usr/src/app

EXPOSE 8080

# Bundle app source
COPY . /usr/src/app

#Install app dependencies
#COPY package.json /usr/src/app/
RUN npm install



CMD ["ash","./gui.sh"]
