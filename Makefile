
SHELL:=/bin/bash
ROOTPATH:=$(shell pwd)

ENV_FILE=".env"
IMAGE_NAME_PREFIX?="microsoft/azuretre"
FULL_CONTAINER_REGISTRY_NAME?="$${ACR_NAME}.azurecr.io"
FULL_IMAGE_NAME_PREFIX:=`echo "${FULL_CONTAINER_REGISTRY_NAME}/${IMAGE_NAME_PREFIX}" | tr A-Z a-z`
AZURE_TRE_DIR=AzureTRE
target_title = @echo -e "\n\e[34m»»» 🧩 \e[96m$(1)\e[0m..."
CFLAGS=-g


include ${AZURE_TRE_DIR}/Makefile


