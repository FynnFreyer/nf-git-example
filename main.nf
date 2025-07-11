#!/usr/bin/env nextflow

process greet {
  input:
    val name
  exec:
    println("Hello $name")
}


workflow {
  def names_ch = channel.of("Mylene", "Vanessa", "Vaibhav", "Kristin", "Ranad")
  names_ch | greet
}
