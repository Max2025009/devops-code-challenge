
# DevOps Coding Challenge

## Setup Instructions

1. Clone the repository:
   ```sh
   git clone <repo-url>
   cd devops-challenge
   ```

2. Install dependencies:
   ```sh
   cd backend && npm install
   cd ../frontend && npm install
   ```

3. Build and run Docker containers:
   ```sh
   docker build -t backend ./backend
   docker build -t frontend ./frontend
   docker-compose up -d
   ```

4. Deploy using Terraform:
   ```sh
   cd terraform
   terraform init
   terraform apply -auto-approve
   ```

5. Jenkins Pipeline Setup:
   - Configure Jenkins job to use this repository.
   - Set up AWS credentials for Jenkins.
   - Run the pipeline to deploy the services.