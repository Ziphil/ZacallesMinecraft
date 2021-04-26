# coding: utf-8


require 'pp'
require 'fileutils'

Encoding.default_external = "UTF-8"


FileUtils.mkdir_p("dist")
FileUtils.mkdir_p("dist/assets/minecraft/textures/font")

FileUtils.copy("pack.mcmeta", "dist/pack.mcmeta")
FileUtils.copy("pack.png", "dist/pack.png")
FileUtils.copy(Dir.glob("font/*.png"), "dist/assets/minecraft/textures/font")

puts("done")