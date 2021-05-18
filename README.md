# scala3_for_gitpod
This project provides the GitPod development environment with SBT and 
Scala 3 syntax highlighting. The setup only need the two files
* .gitpod.yml
* Dockerfile

## On GitPod
Please read the terms and conditions of GitPod to understand what the concrete offer is.
In this section I shall describe shortly the feature that I find at the moment most 
fascinating and useful to me.

GitPod is a browser based development enviroment and should (hopefully) work in any browser
independent of the OS the browser is run on. So for example, one should be able to code on 
a Chromebook or IPad. It works by giving GitPod the address to a/your Git repo at one of the
larger Git hosting services such as GitHub, GitLab and BitBucket (see further down). It will start the
development environment in the cloud whose GUI will then be displayed in your browser tab.

Currently, GitPod lets you use the service for 50h a month free, if you are 
developing in a _public_ Git repository! Public does not mean that anyone can delete or overwrite
your code! It only means that it can be viewed and inspected by anyone. Also, for someone who just 
wants to try things out or maybe learn Scala 50h per month should be enough: If you work on your 
project every weekday of a month you have two hours per day. Enough for a side project, me thinks. 
If you pay, you obviously get more. :)

## How to Start the Environment

Click this [link](gitpod.io#https://github.com/robertPiro/scala3_for_gitpod) to start the 
configuration saved in the master branch of this project. Since you will not be able to
push to the master branch of [this repo](https://github.com/robertPiro/scala3_for_gitpod), 
you will not be able to save changes. You cannot break anything. When you are done, just close
the browser tab or the browser window and everything is back to the state is was!

### How to Save changes
There are two ways to save changes, which we describe further down. You can either 

* Create a repo with a supported Git hosting service and push to that new repo, from where
the GitPod environment can be conveniently started (preferred), or
* Always start it with the link above and then clone your repo from your favourite service
into this container.

#### Create Repo and Set New Remote
1. Create a new personal repo with one of the supported Git hosting services such as github, GitLab or Bitbucket.
You will obtain your Git URI recognisable by its `git` extension, similar to
`https://github.com/user/repo.git`.
2. Start the container using this [link](gitpod.io#https://github.com/robertPiro/scala3_for_gitpod)
3. Open terminal for example by clicking on Terminal -> New Terminal in the menu bar above
4. In this terminal issue <br>
```git remote add origin https://github.com/user/repo.git```
5. Whenever you create a file, add it with `git add [filepath]`
6. To save files, first save them with File -> Save All and then push them all up with
```git commit -a -m '[here is a message of your choice]'```

Next time you will be able to to start your container directly from the supported Git hosting service
by putting ```gitpod.io#[your Git URI]``` into your browser bar, skipping steps 1 - 4. Never forget 
steps 5. and 6. or else your changes will not be saved.

