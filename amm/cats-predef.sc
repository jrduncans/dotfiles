interp.configureCompiler(_.settings.YpartialUnification.value = true)

import $plugin.$ivy.`org.spire-math::kind-projector:0.9.3`
import $ivy.`org.typelevel::cats-core:1.0.0-RC1`
import cats._
import cats.data._
import cats.implicits._
import scala.concurrent._
import scala.concurrent.ExecutionContext.Implicits.global

def importCatsFree = {
    repl.load("import $ivy.`org.typelevel::cats-free:1.0.0-RC1`")
    repl.load("import cats.free._")
}

def importCatsEffect = {
    repl.load("import $ivy.`org.typelevel::cats-effect:0.5`")
    repl.load("import cats.effect._")
}

def importKittens = {
    repl.load("import $ivy.`org.typelevel::kittens:1.0.0-RC1`")
}

def importMouse = {
    repl.load("import $ivy.`org.typelevel::mouse:0.12`")
    repl.load("import mouse.all._")
}
