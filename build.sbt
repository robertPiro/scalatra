ThisBuild / scalaVersion := "3.0.0-RC2"
ThisBuild / organization  := "io.mytest"
ThisBuild / version        := "0.1.0-SNAPSHOT"

lazy val root = (project in file("."))
   .settings(
       name := "My Project"
    )