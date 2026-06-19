FROM nginx:alpine
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/templates/default.conf.template
ENV PORT=8080
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
