# NOTE: Replace YOUR_API_KEY_HERE with your actual IBM Cloud API key before running
export API_KEY="YOUR_API_KEY_HERE"

# Step 1: Get IAM Token from IBM Cloud
export IAM_TOKEN=$(curl -X POST "https://iam.cloud.ibm.com/identity/token" \
--header "Content-Type: application/x-www-form-urlencoded" \
--data-urlencode "grant_type=urn:ibm:params:oauth:grant-type:apikey" \
--data-urlencode "apikey=$API_KEY" | jq -r '.access_token')

# Step 2: Send prompt to Watsonx AI deployment
curl --location "https://us-south.ml.cloud.ibm.com/ml/v4/deployments/21570d33-fa80-46d1-92a0-9406e4cbbf23/ai_service_stream?version=2021-05-01" \
--header "Content-Type: application/json" \
--header "Accept: application/json" \
--header "Authorization: Bearer $IAM_TOKEN" \
--data '{
  "messages": [
    {
      "role": "user",
      "content": "Hi LearnMate! I am a beginner interested in Cybersecurity. Please suggest a personalized learning roadmap."
    }
  ]
}'
