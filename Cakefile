{print} = require 'util'
{spawn} = require 'child_process'

task 'jade', 'Compile Jade files from src/ to ./', ->
  build 'jade', ['-O', '.', '-P', 'src']


task 'jade:watch', 'Compile Jade files from src/ to ./', ->
  build 'jade', ['-O', '.', '-P', '-w', 'src']



task 'jade:production', 'Compile Jade files from src/ to ./ with minifying', ->
  build 'jade', ['-O', '.', 'src']



task 'stylus', 'Compile CSS files from src/css to css', ->
  build 'stylus', ['-o', 'css', 'src/css']


task 'stylus:watch', 'Compile CSS files from src/css to css', ->
  build 'stylus', ['-o', 'css', '-w', 'src/css']



task 'stylus:production', 'Compile CSS files from src/css to css with minifying', ->
  build 'stylus', ['-c', '-o', 'css', 'src/css']



task 'coffee', 'Compile CoffeeScript files from src to ./', ->
  build 'coffee', ['-c', '-o', '.', 'src']

task 'coffee:watch', 'Compile CoffeeScript files from src to ./', ->
  build 'coffee', ['-c', '-o', '.', '-w', 'src']

  
  
  
task 'watch', 'Watch for all changes', ->
  invoke 'jade:watch'
  invoke 'stylus:watch'
  invoke 'coffee:watch'



build = (cmd, args, callback) ->

  child_proc = spawn cmd, args

  child_proc.stderr.on 'data', (error) ->
    process.stderr.write error.toString()

  child_proc.stdout.on 'data', (data) ->
    print data.toString()

  child_proc.on 'exit', (code) ->
    callback?() if code is 0