interp.configureCompiler(_.settings.YpartialUnification.value = true)
interp.configureCompiler(_.settings.Ydelambdafy.value = "inline")

import $plugin.$ivy.`org.spire-math::kind-projector:0.9.7`
import $ivy.`org.typelevel::cats-core:1.2.0`
import cats._
import cats.data._
import cats.implicits._
import scala.concurrent._
import scala.concurrent.ExecutionContext.Implicits.global

def importCatsFree = {
  repl.load("import $ivy.`org.typelevel::cats-free:1.2.0`")
  repl.load("import cats.free._")
}

def importCatsEffect = {
  repl.load("import $ivy.`org.typelevel::cats-effect:0.10`")
  repl.load("import cats.effect._")
}

def importKittens = {
  repl.load("import $ivy.`org.typelevel::kittens:1.1.0`")
}

def importMouse = {
  repl.load("import $ivy.`org.typelevel::mouse:0.17`")
  repl.load("import mouse.all._")
}

def importCirce = {
  repl.load("import $ivy.`io.circe::circe-core:0.9.3`")
  repl.load("import $ivy.`io.circe::circe-generic:0.9.3`")
  repl.load("import $ivy.`io.circe::circe-generic-extras:0.9.3`")
  repl.load("import $ivy.`io.circe::circe-parser:0.9.3`")
  repl.load("import io.circe._, io.circe.generic.semiauto._, io.circe.generic.auto._, io.circe.parser._, io.circe.syntax._")
}

def importMonocle = {
  repl.load("import $plugin.$ivy.`org.scalamacros:::paradise:2.1.1`")
  repl.load("import $ivy.`com.github.julien-truffaut::monocle-core:1.5.1-cats`")
  repl.load("import $ivy.`com.github.julien-truffaut::monocle-macro:1.5.1-cats`")
  repl.load("import monocle.Lens,monocle.macros.GenLens,monocle.macros.Lenses,monocle.function.all._,monocle.macros.syntax.lens._")
}
