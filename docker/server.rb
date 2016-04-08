# -*- coding: utf-8 -*-
IP       = '0.0.0.0'
PORT     = '8080'
DOC      =  './'

require 'webrick'
require 'net/http'

url = URI.parse('http://mydatastore.kevin.com:9090/')
req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}
datastore_response = res.body


opts  = {
    :BindAddress    => IP,
    :Port           => PORT,
    :DocumentRoot   => DOC,
}

server = WEBrick::HTTPServer.new(opts)
server.mount_proc("/") { |req, res|
  res.body = "Hello, your datastore is: #{datastore_response}"
}

#コマンドラインでCtrl+Cした場合止めるイベントハンドラ
Signal.trap(:INT){ server.shutdown}

#サーバースタート
server.start
