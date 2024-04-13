# DevOps (AWS + Kubernetes) Coding Challenge

***FSL Version: V2.0.0***

## Introduction

Welcome to our coding challenge! This challenge has been designed to test your coding skills and problem-solving abilities. This challenge is a great way to push yourself and learn new things. The challenge will test your technology stack skills and your ability to solve problems. Good luck, and have fun!

## Guidelines

You will create a screen recording video of yourself completing the challenge, then send us a link to the file via Google Drive. A few things to consider:

- **The recording must capture the entire coding challenge and should not exceed 60 minutes. While there is some flexibility to go beyond this limit, any additional time over 60 minutes will result in penalties and may affect your application.**
- You can use screen recording software like Loom, QuickTime, or something similar, to create the video.
- As you complete the challenge, please explain what you are doing. Walk us through your thinking, explain your decisions, etc.
- You cannot use tools such as Copilot, Tabnine, Captain Stack, GPT-Code-Clippy, chatGPT, or similar to simplify or generate code to support the challenge. Doing this will be grounds for automatic disqualification.
- You cannot search for information from websites like Stackoverflow, blogs, forums, or similar; however, you **can** use the official documentation website of the technology.
- **You MUST NOT edit your video**, stop it and continue later, copy contents from hidden screens, or do anything that could be considered cheating.
- The recording must be done in one take without pauses or editing. **You MUST NOT stop or interrupt the recording at any point**; if you do, you will be disqualified.
- You should **start the recording after completing the project's environment setup**.
- You should record your entire screen so we can validate your implementation correctly. Also, **your computer clock should be visible in the entire video.**
- Here is a short clip from a recent coding challenge as an example of what your recording should look like [Example video](http://www.loom.com/share/85434243d487456b8ef4ae45c3fbc788). It is from a React challenge, but it is the same for any challenge.
- Please upload the video file to Google Drive and share an open link with us (we support .mp4, files smaller/with less than 4 GB).

# Setup

You can clone the challenge repository to your local machine with the following command:

GITHUB-TOKEN: `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` 

```bash
git clone https://{GITHUB-TOKEN}@github.com/fullstacklabs/assessment-cc-devops-kubernetes-sr-01 --branch v2.0.0
```

# FSL DevOps Challenge: Part 1

## **Continuous integration**

Set up a new repository and CI pipeline using any code version provider specified below:

- Github Actions
- Gitlab CI/CD
- CircleCI
- Azure DevOps

The CI steps should be created and triggered for any pull request. The pipeline should run the following steps:

- Install dependencies npm install
- Linter (ESLint) npm run lint
- Formatter (Prettier) npm run prettier
- Test (Jest) CI=true npm run test
- Build npm run build

The pipeline should be successful. 

Please provide some pull requests to show pass or fail status in the CI pipeline.

# FSL DevOps Challenge: Part 2

## Test the application locally

Run the application locally using the Kubernetes platform with docker-desktop, minikube, or any application that creates a local cluster of Kubernetes.

The application must be deployed on Kubernetes using manifest files and must follow the requirements below:

1. The service and deployment resources must be hosted in a namespace called production
2. The service resource must listen on port 8080
3. The application should have an env name called MY_SECRET that gets the value from the Kubernetes secrets resource. The value should be ‘On3H1torL3sS`
4. The application must be available with the name http://fsl-challenge.me, pointing to your localhost

## Continuous Deployment

Deploy the application in your AWS account using any services that run the application as Docker Container.

The application just needs to be:

1. Available for anyone with Internet access only during the challenge recording