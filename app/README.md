.

📌 Static Web App Deployment using Azure DevOps Pipeline
🔹 Project Overview

Yeh project dikhata hai ki kaise hum:

.NET application build karte hain

Azure DevOps Pipeline ke through automate karte hain

Azure App Service par deploy karte hain

Application ek static website hai jo ASP.NET Core ke through host ho rahi hai.

🔧 Tech Stack

.NET 8 SDK

ASP.NET Core (Static File Hosting)

Azure DevOps Pipeline

Azure App Service

Self-hosted Agent (kolkata)

📂 Project Structure
SimpleDotNetApp/
│
├── wwwroot/
│   ├── index.html
│   ├── style.css
│   └── app.js
│
├── Program.cs
├── SimpleDotNetApp.csproj
├── azure-pipelines.yml
└── README.md

🧠 Application Kya Karta Hai?

Yeh ek static web application hai

HTML, CSS aur JavaScript files ko serve karta hai

Backend me koi API ya database nahi hai

Azure App Service par lightweight hosting ke liye perfect hai

▶️ Local Machine par Kaise Run Karein?
Prerequisites

.NET SDK 8 install hona chahiye

VS Code / Terminal

Steps
dotnet restore
dotnet build
dotnet run


Browser me open karo:

http://localhost:5000

🚀 Azure DevOps Pipeline Explanation

Pipeline file: azure-pipelines.yml

Trigger
trigger:
- main
- feature/*


Matlab:

main branch me code push → pipeline run

feature/* branch me code push → pipeline run

🏗️ Build & Publish Step (Simple Language)
dotnet restore
dotnet build --configuration Release
dotnet publish -c Release -o $(Build.ArtifactStagingDirectory)

Iska Matlab:

restore → zaroori packages download karta hai

build → code ko compile karta hai

publish → final deploy-ready files banata hai

Socho jaise:

Samaan khareedna → khana banana → parcel pack karna

📦 Artifacts
PublishBuildArtifacts@1


Build ke baad files ko artifact ke form me save karta hai

Future me deploy / rollback ke kaam aata hai

☁️ Deployment to Azure App Service
AzureWebApp@1


Azure service connection use karta hai

App Service me application deploy karta hai

Live URL:

https://<app-service-name>.azurewebsites.net

✅ Is Project se Kya Seekhne Ko Milta Hai?

✔ CI/CD pipeline ka flow
✔ .NET build & publish process
✔ Azure App Service deployment
✔ Self-hosted agent usage
✔ Real-world DevOps approach

🔮 Future Enhancements

Multi-stage pipeline (Dev / UAT / Prod)

Logic App integration (email / Teams notification)

Deployment slots

Docker-based deployment

Terraform for infra

👤 Author

Aniket Ghosh
DevOps Engineer
LinkedIn: https://www.linkedin.com/in/aniket-devops/