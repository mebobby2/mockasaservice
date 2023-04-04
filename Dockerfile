FROM wiremock/wiremock

COPY stubs /home/wiremock

ADD https://repo1.maven.org/maven2/org/wiremock/wiremock-webhooks-extension/2.35.0/wiremock-webhooks-extension-2.35.0.jar /var/wiremock/extensions/

CMD ["--extensions", "org.wiremock.webhooks.Webhooks"]
