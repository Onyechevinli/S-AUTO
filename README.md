
1️ Create a Simple Node.js Web App
OPEN VS CODE.

📌 Inside a new folder: S-auto

📌 Create the following file accordingly:
 S-auto/
├── package.json
├── server.js
├── public/
│   ├── styles.css
│   └── script.js
└── views/
    ├── about.ejs
    ├── contact.ejs
    └── index.ejs
------------------------------------------------------------


📌 Create package.json, then after, MAKE SURE YOU SAVE 


Install dependencies:
--------------------------------------------
npm init
npm install express ejs
--------------------------------------------


Test locally:
--------------------------------------------
node server.js
----------------------------------------

Open browser → http://localhost:3000



---------------------------------------------------

PUSHING THE PROJECT TO GITHUB

🧩 STEP 1 — Initialize Git in your Project Folder

In VS Code’s terminal (inside your project root folder, e.g. S_AUTO):

git init


This creates a local .git repository.

🧩 STEP 2 — Add Your Files to Git
git add .


That stages all files in your folder for commit.

🧩 STEP 3 — Commit the Files
git commit -m "Initial commit"


This saves the current version to your local repo.

🧩 STEP 4 — Create a GitHub Repository

Go to https://github.com/new

Give it a name, e.g. ClearWork

Choose Public or Private

Do not initialize with a README (since you already have files locally)

Click Create Repository

GitHub will show you a page with instructions to push existing code — keep that open.

🧩 STEP 5 — Connect Your Local Repo to GitHub

From VS Code terminal, copy and run the commands GitHub shows, or manually:

git remote add origin https://github.com/<your-username>/<repo-name>.git


Example:

git remote add origin https://github.com/vincentumeokoli/Sealedauto.git

🧩 STEP 6 — Push to GitHub
git branch -M main
git push -u origin main

# if you encounter error like "error: failed to push some refs to ...", run:
git pull --rebase origin main
git push -u origin main

If prompted, sign in to GitHub or paste a Personal Access Token (PAT) instead of your password.

🔒 (GitHub no longer accepts passwords over HTTPS).

🧩 STEP 7 — Verify

Go to your GitHub repository URL:

https://github.com/<your-username>/<repo-name>


🎉 You should now see all your VS Code files online.

✅ Future updates

When you make new changes later:

git add .
git commit -m "Updated Node.js app"
git push

-----------------------------------------------------------

We create a terraform folder in the root directory and create the following files accordingly:
    S-auto/terraform/
├── main.tf
├── outputs.tf
├── variables.tf
└── terraform.tfvars

-----------------------------------------------------------


To deploy this infrastructure:

Set up Azure authentication (add Azure secrets to your workspace)
run the following commands in the terraform folder:
az login
select the appropriate subscription:
az account set --subscription="your-subscription-name-or-id"

Then run the following Terraform commands:
-------------------------------------------
Initialize: terraform init
Plan: terraform plan
Deploy: terraform apply

-----------------------------------------------------------

# After deployment, you can access the web app using the URL provided in the Terraform output but you must first connect the web app to the code repository (GitHub) for continuous deployment by following these steps:    
1. Go to the Azure Portal (https://portal.azure.com) and navigate to your newly created Web App.
2. In the left-hand menu, under "Deployment," click on "Deployment Center."
3. Choose "GitHub" as the source and click "Continue."
4. Authenticate with your GitHub account if prompted.
5. Select the organization, repository, and branch where your Node.js web app code is hosted.
6. Review the settings and click "save" to set up the continuous deployment.
7. Azure will now automatically pull the latest code from your GitHub repository and deploy it to your Web App.

# Once the deployment is complete, you can access your Node.js web app using the URL (Domain name) provided in the Azure Portal for your Web App.

