require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
$:.unshift File.expand_path("./../lib/views", __FILE__)
require 'board'
require 'board_case'
require 'player'
require 'game'
require 'show'
require 'application'

Application.new.perform