gcloud auth list
gcloud config list project
gcloud services enable   artifactregistry.googleapis.com   cloudfunctions.googleapis.com   cloudbuild.googleapis.com   eventarc.googleapis.com   run.googleapis.com   logging.googleapis.com   pubsub.googleapis.com
gcloud services enable cloudaicompanion.googleapis.com
mkdir ~/hello-http && cd $_
touch index.js && touch package.json
gcloud functions deploy nodejs-http-function   --gen2   --runtime nodejs22   --entry-point helloWorld   --source .   --region europe-west1   --trigger-http   --timeout 600s   --max-instances 1
gcloud functions call nodejs-http-function   --gen2 --region europe-west1
PROJECT_NUMBER=$(gcloud projects list --filter="project_id:qwiklabs-gcp-01-130c0aac2972" --format='value(project_number)')
SERVICE_ACCOUNT=$(gsutil kms serviceaccount -p $PROJECT_NUMBER)
gcloud projects add-iam-policy-binding qwiklabs-gcp-01-130c0aac2972   --member serviceAccount:$SERVICE_ACCOUNT   --role roles/pubsub.publisher
mkdir ~/hello-storage && cd $_
touch index.js && touch package.json
BUCKET="gs://gcf-gen2-storage-qwiklabs-gcp-01-130c0aac2972"
gsutil mb -l europe-west1 $BUCKET
gcloud functions deploy nodejs-storage-function   --gen2   --runtime nodejs22   --entry-point helloStorage   --source .   --region europe-west1   --trigger-bucket $BUCKET   --trigger-location europe-west1   --max-instances 1
gcloud functions deploy nodejs-storage-function   --gen2   --runtime nodejs22   --entry-point helloStorage   --source .   --region europe-west1   --trigger-bucket $BUCKET   --trigger-location europe-west1   --max-instances 1
gcloud functions deploy nodejs-storage-function   --gen2   --runtime nodejs22   --entry-point helloStorage   --source .   --region europe-west1   --trigger-bucket $BUCKET   --trigger-location europe-west1   --max-instances 1
echo "Hello World" > random.txt
gsutil cp random.txt $BUCKET/random.txt
gcloud functions logs read nodejs-storage-function   --region europe-west1 --gen2 --limit=100 --format "value(log)"
gcloud projects add-iam-policy-binding qwiklabs-gcp-01-130c0aac2972   --member serviceAccount:$PROJECT_NUMBER-compute@developer.gserviceaccount.com   --role roles/eventarc.eventReceiver
cd ~
git clone https://github.com/GoogleCloudPlatform/eventarc-samples.git
cd ~/eventarc-samples/gce-vm-labeler/gcf/nodejs
gcloud functions deploy gce-vm-labeler   --gen2   --runtime nodejs22   --entry-point labelVmCreation   --source .   --region europe-west1   --trigger-event-filters="type=google.cloud.audit.log.v1.written,serviceName=compute.googleapis.com,methodName=beta.compute.instances.insert"   --trigger-location europe-west1   --max-instances 1
gcloud compute instances describe instance-1 --zone europe-west1-d
gcloud compute instances delete instance-1 --zone europe-west1-d
gcloud compute instances delete instance-1 --zone europe-west1-b
Y
mkdir ~/hello-world-colored && cd $_
touch main.py
touch requirements.txt
COLOR=orange
gcloud functions deploy hello-world-colored   --gen2   --runtime python311   --entry-point hello_world   --source .   --region europe-west1   --trigger-http   --allow-unauthenticated   --update-env-vars COLOR=$COLOR   --max-instances 1
mkdir ~/min-instances && cd $_
touch main.go
touch go.mod
gcloud functions deploy slow-function   --gen2   --runtime go123   --entry-point HelloWorld   --source .   --region europe-west1   --trigger-http   --allow-unauthenticated   --max-instances 4
gcloud functions call slow-function   --gen2 --region europe-west1
gcloud functions call slow-function   --gen2 --region europe-west1
sudo apt install hey
SLOW_URL=$(gcloud functions describe slow-function --region europe-west1 --gen2 --format="value(serviceConfig.uri)")
hey -n 10 -c 10 $SLOW_URL
gcloud run services delete slow-function --region europe-west1
gcloud functions deploy slow-concurrent-function   --gen2   --runtime go123   --entry-point HelloWorld   --source .   --region europe-west1   --trigger-http   --allow-unauthenticated   --min-instances 1   --max-instances 4
SLOW_CONCURRENT_URL=$(gcloud functions describe slow-concurrent-function --region europe-west1 --gen2 --format="value(serviceConfig.uri)")
hey -n 10 -c 10 $SLOW_CONCURRENT_URL
SLOW_CONCURRENT_URL=$(gcloud functions describe slow-concurrent-function --region europe-west1 --gen2 --format="value(serviceConfig.uri)")
hey -n 10 -c 10 $SLOW_CONCURRENT_URL
zip -r meus-labs.zip .
pwd
ls
cd ..
cd
pwd
ls
