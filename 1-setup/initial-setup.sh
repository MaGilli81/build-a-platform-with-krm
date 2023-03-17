#!/bin/bash 
 export PROJECT_ID=$(gcloud config get-value project)
 export PROJECT_NUMBER=$(gcloud projects describe ${PROJECT_ID} --format="value(projectNumber)")
 export GITHUB_USERNAME=


 gcloud config set project ${PROJECT_ID}

 gcloud services enable \
  cloudresourcemanager.googleapis.com \
  container.googleapis.com \
  cloudbuild.googleapis.com \
  sqladmin.googleapis.com \
  secretmanager.googleapis.com \
  cloudasset.googleapis.com \
  storage.googleapis.com \
  gkehub.googleapis.com
