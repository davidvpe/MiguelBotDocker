FROM node:14

WORKDIR /

COPY . .

RUN apt update && apt upgrade -y && apt install jq -y

RUN chmod +x run.sh

CMD ["bash","run.sh"]

