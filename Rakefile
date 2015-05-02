# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = 'resource_stream'
  # app.api_version = "19"
  app.development { app.archs << 'x86' }
  app.vendor_project(:jar => "./vendor/android-iconify-1.0.9.jar")
end