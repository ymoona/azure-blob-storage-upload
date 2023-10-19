FROM mcr.microsoft.com/azure-cli

LABEL "com.github.actions.name"="azure-blob-storage-upload"
LABEL "com.github.actions.description"="Uploads a file to Azure Blob Storage"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"
LABEL "repository"="https://github.com/ymoona/azure-blob-storage-upload"
LABEL "homepage"="https://github.com/ymoona/azure-blob-storage-upload"
LABEL "maintainer"="Ymoona"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
