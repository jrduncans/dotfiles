interp.configureCompiler(_.settings.YpartialUnification.value = true)

import $plugin.$ivy.`org.spire-math::kind-projector:0.9.3`
import $ivy.`org.typelevel::cats-core:1.0.0-MF`
import cats._
import cats.data._
import cats.implicits._
import scala.concurrent._
import scala.concurrent.ExecutionContext.Implicits.global
