interp.configureCompiler(_.settings.YpartialUnification.value = true)

import $plugin.$ivy.`org.spire-math::kind-projector:0.9.5`
import $ivy.`org.typelevel::cats-core:1.0.1`
import cats._
import cats.data._
import cats.implicits._
import scala.concurrent._
import scala.concurrent.ExecutionContext.Implicits.global

def importCatsFree = {
  repl.load("import $ivy.`org.typelevel::cats-free:1.0.1`")
  repl.load("import cats.free._")
}

def importCatsEffect = {
  repl.load("import $ivy.`org.typelevel::cats-effect:0.8`")
  repl.load("import cats.effect._")
}

def importKittens = {
  repl.load("import $ivy.`org.typelevel::kittens:1.0.0-RC2`")
}

def importMouse = {
  repl.load("import $ivy.`org.typelevel::mouse:0.16`")
  repl.load("import mouse.all._")
}

def importCirce = {
  repl.load("import $ivy.`io.circe::circe-core:0.9.1`")
  repl.load("import $ivy.`io.circe::circe-generic:0.9.1`")
  repl.load("import $ivy.`io.circe::circe-parser:0.9.1`")
  repl.load("import io.circe._, io.circe.generic.auto._, io.circe.parser._, io.circe.syntax._")
}
