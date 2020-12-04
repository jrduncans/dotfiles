interp.configureCompiler(_.settings.Ydelambdafy.value = "inline")
interp.configureCompiler(_.settings.YmacroAnnotations.value = true)

import $plugin.$ivy.`org.typelevel:::kind-projector:0.11.2`
import $ivy.`org.typelevel::cats-core:2.3.0`
import cats._
import cats.data._
import cats.implicits._
import scala.concurrent._
import scala.concurrent.ExecutionContext.Implicits.global

def importCatsEffect = {
  repl.load("import $ivy.`org.typelevel::cats-effect:2.3.0`")
  repl.load("import cats.effect._")
}

def importKittens = {
  repl.load("import $ivy.`org.typelevel::kittens:2.2.0`")
}

def importMouse = {
  repl.load("import $ivy.`org.typelevel::mouse:0.26.2`")
  repl.load("import mouse.all._")
}

def importCirce = {
  repl.load("import $ivy.`io.circe::circe-core:0.13.0`")
  repl.load("import $ivy.`io.circe::circe-generic:0.13.0`")
  repl.load("import $ivy.`io.circe::circe-generic-extras:0.13.0`")
  repl.load("import $ivy.`io.circe::circe-parser:0.13.0`")
  repl.load("import $ivy.`io.circe::circe-optics:0.13.0`")
  repl.load("import $ivy.`io.circe::circe-literal:0.13.0`")
  repl.load("import io.circe._, io.circe.generic.extras.Configuration, io.circe.generic.extras.semiauto._, io.circe.parser._, io.circe.syntax._, io.circe.optics.JsonPath._, io.circe.literal._")
}

def importMonocle = {
  repl.load("import $ivy.`com.github.julien-truffaut::monocle-core:2.1.0`")
  repl.load("import $ivy.`com.github.julien-truffaut::monocle-macro:2.1.0`")
  repl.load("import monocle.Lens,monocle.macros.GenLens,monocle.macros.Lenses,monocle.function.all._,monocle.macros.syntax.lens._")
}

def importChimney = {
  repl.load("import $ivy.`io.scalaland::chimney:0.6.1`")
  repl.load("import io.scalaland.chimney.dsl._")
}

def importSquants = {
  repl.load("import $ivy.`org.typelevel::squants:1.7.0`")
}
