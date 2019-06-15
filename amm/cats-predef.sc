interp.configureCompiler(_.settings.Ydelambdafy.value = "inline")
interp.configureCompiler(_.settings.YmacroAnnotations.value = true)

import $plugin.$ivy.`org.typelevel::kind-projector:0.10.3`
import $ivy.`org.typelevel::cats-core:2.0.0-M4`
import cats._
import cats.data._
import cats.implicits._
import scala.concurrent._
import scala.concurrent.ExecutionContext.Implicits.global

def importCatsEffect = {
  repl.load("import $ivy.`org.typelevel::cats-effect:2.0.0-M4`")
  repl.load("import cats.effect._")
}

def importKittens = {
  repl.load("import $ivy.`org.typelevel::kittens:1.2.0`")
}

def importMouse = {
  repl.load("import $ivy.`org.typelevel::mouse:0.20`")
  repl.load("import mouse.all._")
}

def importCirce = {
  repl.load("import $ivy.`io.circe::circe-core:0.12.0-M3`")
  repl.load("import $ivy.`io.circe::circe-generic:0.12.0-M3`")
  repl.load("import $ivy.`io.circe::circe-generic-extras:0.12.0-M3`")
  repl.load("import $ivy.`io.circe::circe-parser:0.12.0-M3`")
  repl.load("import io.circe._, io.circe.generic.semiauto._, io.circe.generic.auto._, io.circe.parser._, io.circe.syntax._")
}

def importMonocle = {
  repl.load("import $ivy.`com.github.julien-truffaut::monocle-core:1.6.0-RC1`")
  repl.load("import $ivy.`com.github.julien-truffaut::monocle-macro:1.6.0-RC1`")
  repl.load("import monocle.Lens,monocle.macros.GenLens,monocle.macros.Lenses,monocle.function.all._,monocle.macros.syntax.lens._")
}

def importChimney = {
  repl.load("import $ivy.`io.scalaland::chimney:0.3.2`")
  repl.load("import io.scalaland.chimney.dsl._")
}
