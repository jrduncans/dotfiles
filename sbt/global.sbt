resolvers += Resolver.mavenLocal

net.virtualvoid.sbt.graph.Plugin.graphSettings

libraryDependencies += "com.lihaoyi" % "ammonite-repl" % "0.5.0" % "test" cross CrossVersion.full

initialCommands in (Test, console) := """ammonite.repl.Repl.run("")"""
