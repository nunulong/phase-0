# 1.5 Tracking Changes

1. How does tracking and adding changes make developers' lives easier?

   Answer: Tracking and adding changes work just as the checkpoint in a video game which allow the developer to go back the checkpoint and restore the code you messed up and save pain of starting over the project. Developer can revert the code that has bugs and mistake and have safety net that ensure work around the previous code and go back and forth between the old and new codes.

2. What is a commit?

   Answer: Commit is that you want to push you whole set of code to git database and make a checkpoint of your code you just made, which make sure you can revert the code you want before you commit and restore them. Also, after commiting the code, you can push local code to the remote repo.

3. What are the best practices for commit messages?

   Answer: The better way is to make a commit header which is no longer than 50 character and contains the summary of this commit allowing people to know the sketch of the content to determine if they are interested in or not. Then, you need to make a commit body using imperative tense to indicate all work you have done to the code. Also please adjust the column to no longer than 70 characters which makes easier to view log in the terminal. I prefer the command "git commit -v" to leave the commit message inside the code to allow people review the changes easily every time they open up the working file.

4. What does the HEAD^ argument mean?

   Answer: This means the last commit to the current commit made.

5. What are the 3 stages of a git change and how do you move a file from one stage to the other?

   Answer: First stage is untracked file or unstaged file. Second stage is staged file ready to commit. Third stage is commited file stored in the git database ready to push to remote repo and to make a pull request and merge to master branch.

6. Write a handy cheatsheet of the commands you need to commit your changes?

   Answer: git checkout master
        git pull origin master
        git checkout -b new_branch_name
        git status
        git add .
        git commit -m commit_message
        git push origin new_branch_name
        git checkout master
        git fetch origin master
        git merge master_name
        git branch -d new_branch_name

7. What is a pull request and how do you create and merge one?

   Answer: Pull request is to make sure you have same code locally and remotely. You can do either on github or via command line. Via command line, you type the following the commands: 
      git checkout master
      git pull origin master
      git fetch origin master
      git merge master_name

8. Why are pull requests preferred when working with teams?

   Answer: Since each one in the team has the same code to start with and everyone is on the same page with the latest code they have done before.