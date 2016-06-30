resolvers += Resolver.mavenLocal

net.virtualvoid.sbt.graph.Plugin.graphSettings

libraryDependencies += "com.lihaoyi" % "ammonite-repl" % "0.6.0" % "test" cross CrossVersion.full

initialCommands in (Test, console) := """ammonite.repl.Main().run()"""
