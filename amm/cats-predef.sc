interp.configureCompiler(_.settings.Ydelambdafy.value = "inline")
interp.configureCompiler(_.settings.YmacroAnnotations.value = true)
interp.configureCompiler(_.settings.YtastyReader)

import $plugin.$ivy.`org.typelevel:::kind-projector:0.13.1`
import $ivy.`org.typelevel::cats-core:2.6.1`
import cats._
import cats.data._
import cats.syntax.all._
import scala.concurrent._
import scala.concurrent.ExecutionContext.Implicits.global

def importCatsEffect = {
  repl.load("import $ivy.`org.typelevel::cats-effect:3.2.5`")
  repl.load("import cats.effect._")
}

def importKittens = {
  repl.load("import $ivy.`org.typelevel::kittens:2.3.2`")
}

def importMouse = {
  repl.load("import $ivy.`org.typelevel::mouse:1.0.4`")
  repl.load("import mouse.all._")
}

def importCirce = {
  repl.load("import $ivy.`io.circe::circe-core:0.14.1`")
  repl.load("import $ivy.`io.circe::circe-generic:0.14.1`")
  repl.load("import $ivy.`io.circe::circe-generic-extras:0.14.1`")
  repl.load("import $ivy.`io.circe::circe-parser:0.14.1`")
  repl.load("import $ivy.`io.circe::circe-optics:0.14.1`")
  repl.load("import $ivy.`io.circe::circe-literal:0.14.1`")
  repl.load("import io.circe._, io.circe.generic.extras.Configuration, io.circe.generic.extras.semiauto._, io.circe.parser._, io.circe.syntax._, io.circe.optics.JsonPath._, io.circe.literal._")
}

def importMonocle = {
  repl.load("import $ivy.`dev.optics::monocle-core:3.0.0`")
  repl.load("import $ivy.`dev.optics::monocle-macro:3.0.0`")
  repl.load("import monocle.Lens,monocle.macros.GenLens,monocle.macros.Lenses,monocle.function.all._,monocle.syntax.all._")
}

def importChimney = {
  repl.load("import $ivy.`io.scalaland::chimney:0.6.1`")
  repl.load("import io.scalaland.chimney.dsl._")
}

def importSquants = {
  repl.load("import $ivy.`org.typelevel::squants:1.8.3`")
}

def importFS2 = {
  repl.load("import $ivy.`co.fs2::fs2-core:3.1.1`")
  repl.load("import $ivy.`co.fs2::fs2-io:3.1.1`")
  repl.load("import fs2.Stream")
}
