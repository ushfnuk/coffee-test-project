{print} = require 'util'
{spawn} = require 'child_process'

build = (cmd, args, callback) ->

  coffee = spawn cmd, args

  coffee.stderr.on 'error', (error) ->
    process.stderr.write error.toString()

  coffee.stdout.on 'data', (data) ->
    print data.toString()

  coffee.on 'exit', (code) ->
    callback?() if code is 0

task 'jade', 'Compile Jade files from src/ to ./', ->
  build 'jade', ['-O', '.', 'src'], ->
    console.log 'Everything is in the order!'

task 'jade:production', 'Compile Jade files from src/ to ./ with minifying', ->
  build 'jade', ['-O', '.', '-P', 'src'], ->
    console.log 'Everything is in the order!'

task 'coffee', 'Compile CoffeeScript files from src to ./', ->
  build 'coffee', ['-c', '-o', 'js', 'src']