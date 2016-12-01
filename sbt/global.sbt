resolvers += Resolver.mavenLocal

net.virtualvoid.sbt.graph.Plugin.graphSettings

libraryDependencies += "com.lihaoyi" % "ammonite" % "0.8.0" % "test" cross CrossVersion.full

initialCommands in (Test, console) := """ammonite.Main().run()"""
