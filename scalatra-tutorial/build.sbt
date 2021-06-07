val ScalatraVersion = "2.7.1"

ThisBuild / scalaVersion := "2.13.2"
ThisBuild / organization := "io.robertPiro"

lazy val hello = (project in file("."))
  .settings(
    name := "Scalatra Tutorial",
    version := "0.0.0",
    libraryDependencies ++= Seq(
      "org.scalatra" %% "scalatra" % ScalatraVersion,
      "org.scalatra" %% "scalatra-scalatest" % ScalatraVersion % "test",
      "ch.qos.logback" % "logback-classic" % "1.2.3" % "runtime",
      "org.eclipse.jetty" % "jetty-webapp" % "9.4.35.v20201120" % "container",
      "javax.servlet" % "javax.servlet-api" % "3.1.0" % "provided"
    ),
  )

enablePlugins(SbtTwirl)
enablePlugins(JettyPlugin)
