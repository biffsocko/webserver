FROM nginx:alpine

# Name of your webp file in the build directory (override with --build-arg)
ARG IMAGE=image.webp

# Replace the default nginx site with our page + image
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html
COPY ${IMAGE}   /usr/share/nginx/html/image.webp

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
