FROM wordpress:php7.4-fpm-alpine

RUN apk add --update --no-cache less

# WP-CLI
RUN curl -fsSL -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar | bash && \
    chmod +x /usr/local/bin/wp && \
    echo 'wp() {' >> ~/.bashrc && \
    echo '/usr/local/bin/wp "$@" --allow-root' >> ~/.bashrc && \
    echo '}' >> ~/.bashrc
