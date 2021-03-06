# Setting up Scala in GitPod
The GitPod is set up and ready to use. The following instructions are only for those who wonder
how I came up with the configuration and hopefully to give them helpful hints what to change when
further adapting this setup. If you want to use the GitPod container as is, you should read the 
[README.md](README.md). 

In order to set up the container with all the necessary tools, we need
* sbt  --- The Scala Build tool
* VSCode extensions for syntax highlighting and auto-completion
The GitPod image already contains a version of Java and sbt will download 
all other libraries, including the right Scala version. 


## The Docker Image
The Docker base image `gitpod/workspace-full` already contains Java. We only need to install
`sbt` on the system which takes care of downloading newer SBT versions and downloads the Scala libraries. 
Look further down for installing the the VSCode extensions for syntax highlighting and 
auto-completion

We set out from the `gitpod/workspace-full` base image, switch to the root user. The `RUN` command then 
executes the following argument as command in a shell. Note that each command is tied to the next with 
`&&` - if one of these chained command fails, the whole command will fail and the remaining command will
not be executed.

In this shell command we append URIs to specific files. These URIs are used by the package manager `apt` 
to resolve the location, for example of the Small Build Tool (SBT). Which concrete version of SBT is 
pulled is not so important, as the desired SBT version is specified in the file `./project/build.properties`.

As you can see, the process of installing SBT is rather brittle, because we hardcode a SHA into this command 
with which we apparently fetch a key. But this is the description we found on the 
[website](https://eed3si9n.com/category/tags/sbt).

Finally, the command `apt-get` updates and fetches the package information from the new location and 
installs `sbt`.

This concludes the installation of `sbt`

## Installing the VSCode extension
The VSCode extensions are used for syntax highlighting and auto-completion. Note that the extensions
do not enable SBT, Scala or Java!

The extensions needed are Dotty (Scala 3), SBT and the "Scala Syntax (Official)" extension; without the
latter the Dotty extension will not work. You can forego the SBT extension if you do not care for 
highlighted SBT code. 

First every extension has to be downloaded from the [Visual Studio Marketplace](https://marketplace.visualstudio.com/), 
and then they have to be uploaded through the GitPod interface as an extension. This upload process
will automatically extend the `.gitpod.yml` file. If you cannot do the download/upload step, you can just copy
the code snippet below. The snippet was autogenerated when the plugins where added to the Pod, described later.

Before downloading the extension, it is recommended to push the repo to its remote location
at is easily happens that the container reloads.

### Downloading the Extension
From the Microsoft Marketplace, download the following extensions
 * [Dotty Language Server](https://marketplace.visualstudio.com/items?itemName=lampepfl.dotty)
 * [Scala Syntax (Official)](https://marketplace.visualstudio.com/items?itemName=scala-lang.scala)
 * [SBT Plugin](https://marketplace.visualstudio.com/items?itemName=lightbend.vscode-sbt-scala)
The download button can be found on the right under heading resources after Categories and Tags. Alternatively
the extension can also be found at [VisxHub](https://www.vsixhub.com).

### Adding the Extensions to the Pod
Open in GitPod Menu -> View -> Extensions and drag and drop the file into left-hand "context" window
titled "INSTALLED FOR THIS PROJECT". The following lines should appear automatically in your 
`gitpod.yml`:
```
vscode:
  extensions:
    - lampepfl.dotty@0.1.16:d3587c837b126b21148f85a481dfc3b8
    - scala-lang.scala@0.5.3:52fbc099c24619ec8e588ce9e89a1248
    - lightbend.vscode-sbt-scala@0.2.4:495f3c419f3834b98155cefe07f42853
```
In case you cannot download these files or drag-and-drop them as described above, 
I believe you can just append these lines at the end of your `.gitpod.yml` and it should work.
If you are not familiar with the YAML format, here are a couple of tips:
* ensure that `vscode:` has no leading whitespaces
* ensure that the indentation of the following lines is preserved. 
* for indentations, use space only. In particular do not use tabs.

This concludes the installation of the extensions.