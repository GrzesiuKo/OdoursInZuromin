#!/bin/sh


gcloud iot devices create led-light \
  --region=us-central1 \
  --registry=gateway-registry \
  --device-type=non-gateway \
  --project=${GOOGLE_CLOUD_PROJECT}

gcloud iot devices create thermostat \
  --region=us-central1 \
  --registry=gateway-registry \
  --device-type=non-gateway \
  --project=${GOOGLE_CLOUD_PROJECT}

gcloud iot devices create light-sensor \
  --region=us-central1 \
  --registry=gateway-registry \
  --device-type=non-gateway \
  --project=${GOOGLE_CLOUD_PROJECT}


gcloud iot devices gateways bind \
  --device=led-light \
  --device-region=us-central1 \
  --device-registry=gateway-registry\
  --gateway=test-gateway \
  --gateway-region=us-central1 \
  --gateway-registry=gateway-registry \
  --project=${GOOGLE_CLOUD_PROJECT}

gcloud iot devices gateways bind \
  --device=thermostat \
  --device-region=us-central1 \
  --device-registry=gateway-registry\
  --gateway=test-gateway \
  --gateway-region=us-central1 \
  --gateway-registry=gateway-registry \
  --project=${GOOGLE_CLOUD_PROJECT}

gcloud iot devices gateways bind \
  --device=light-sensor \
  --device-region=us-central1 \
  --device-registry=gateway-registry\
  --gateway=test-gateway \
  --gateway-region=us-central1 \
  --gateway-registry=gateway-registry \
  --project=${GOOGLE_CLOUD_PROJECT}


gcloud iot devices create gowniak \
  --region=us-central1 \
  --registry=gateway-registry \
  --device-type=non-gateway \
  --project=${GOOGLE_CLOUD_PROJECT}


gcloud iot devices gateways bind \
  --device=gowniak \
  --device-region=us-central1 \
  --device-registry=gateway-registry\
  --gateway=test-gateway \
  --gateway-region=us-central1 \
  --gateway-registry=gateway-registry \
  --project=${GOOGLE_CLOUD_PROJECT}
