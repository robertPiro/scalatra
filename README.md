# scala3_for_gitpod
Provides the GitPod yaml file and VSCode extension for a Scala 3


# How to setup the Dockerimage


# Installing the VSCode extension
The VSCode extension for Dotty first has to be downloaded from the Webshop and then
uploaded through the GitPod interface as an extension. Then a reference has to be obtained
which is then included in the `.gitpod.yml` file.

Before downloading the extension, it is recommended to push the repo to its remote location
at is easily happens that the container reloads.

## Downloading the Extension
From the Microsoft Marketplace, download the following extension
 * [Dotty Language Server](https://marketplace.visualstudio.com/items?itemName=lampepfl.dotty)
The download button can be found on the right under heading resources after Categories and Tags. Alternatively
the extension can also be found at [VisxHub](https://www.vsixhub.com).

Open in GitPod Menu -> View -> Extensions and drag and drop the file into left-hand "context" window
titled "INSTALLED FOR THIS PROJECT". 

`gitpod.yml`:
```
vscode:
  extensions:
    - scala-lang.scala@0.3.8:wQBBM+lKILHBqOqlqW60xA==
    - scalameta.metals@1.6.2:njgbLSjeMDyY9TZFwn0Bdw== 
```
This concludes the installation.