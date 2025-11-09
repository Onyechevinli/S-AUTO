
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

In VS Code’s terminal (inside your project root folder, e.g. ClearWork):

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