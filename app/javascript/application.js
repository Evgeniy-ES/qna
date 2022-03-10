// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "bootstrap"
import "channels"
import "./answers"
import "./questions"

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels").start()
require("pack/custom").start()
require("pack/posts.js").start()

Rails.start()

require('jquery')
