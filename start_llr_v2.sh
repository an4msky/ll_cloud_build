#!/bin/sh

set -e

cd /opt/learninglocker/
pm2 start pm2/all.json --hp /home/docker
cd /opt/xapi-service/
pm2 start pm2/xapi.json --hp /home/docker
pm2 logs



sh-4.2$ pm2-docker status
Error: EACCES: permission denied, mkdir '/.pm2'
    at Object.fs.mkdirSync (fs.js:885:18)
    at sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:71:13)
    at Function.sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:77:24)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:132:25)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.<anonymous> (/usr/lib/node_modules/pm2/index.js:11:18)
    at Module._compile (module.js:653:30)
    at Object.Module._extensions..js (module.js:664:10)
    at Module.load (module.js:566:32)
Error: EACCES: permission denied, mkdir '/.pm2'
    at Object.fs.mkdirSync (fs.js:885:18)
    at sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:71:13)
    at Function.sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:77:24)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:140:25)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.<anonymous> (/usr/lib/node_modules/pm2/index.js:11:18)
    at Module._compile (module.js:653:30)
    at Object.Module._extensions..js (module.js:664:10)
    at Module.load (module.js:566:32)
Error: ENOENT: no such file or directory, open '/.pm2/module_conf.json'
    at Object.fs.openSync (fs.js:646:18)
    at Object.fs.writeFileSync (fs.js:1299:33)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:148:10)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.<anonymous> (/usr/lib/node_modules/pm2/index.js:11:18)
    at Module._compile (module.js:653:30)
    at Object.Module._extensions..js (module.js:664:10)
    at Module.load (module.js:566:32)
    at tryModuleLoad (module.js:506:12)
Error: EACCES: permission denied, mkdir '/.pm2'
    at Object.fs.mkdirSync (fs.js:885:18)
    at sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:71:13)
    at Function.sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:77:24)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:156:25)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.<anonymous> (/usr/lib/node_modules/pm2/index.js:11:18)
    at Module._compile (module.js:653:30)
    at Object.Module._extensions..js (module.js:664:10)
    at Module.load (module.js:566:32)
Error: ENOENT: no such file or directory, open '/.pm2/module_conf.json'
    at Object.fs.openSync (fs.js:646:18)
    at Object.fs.readFileSync (fs.js:551:33)
    at Object.Configuration.getAllSync (/usr/lib/node_modules/pm2/lib/Configuration.js:295:26)
    at Object.Configuration.getSync (/usr/lib/node_modules/pm2/lib/Configuration.js:266:30)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:117:36)
    at Object.<anonymous> (/usr/lib/node_modules/pm2/index.js:11:18)
    at Module._compile (module.js:653:30)
    at Object.Module._extensions..js (module.js:664:10)
    at Module.load (module.js:566:32)
    at tryModuleLoad (module.js:506:12)
Error: EACCES: permission denied, mkdir '/.pm2'
    at Object.fs.mkdirSync (fs.js:885:18)
    at sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:71:13)
    at Function.sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:77:24)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:132:25)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.instanciate (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:65:16)
    at Command.<anonymous> (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:48:13)
    at Command.listener (/usr/lib/node_modules/pm2/node_modules/commander/index.js:315:8)
    at emitOne (events.js:116:13)
Error: EACCES: permission denied, mkdir '/.pm2'
    at Object.fs.mkdirSync (fs.js:885:18)
    at sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:71:13)
    at Function.sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:77:24)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:140:25)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.instanciate (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:65:16)
    at Command.<anonymous> (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:48:13)
    at Command.listener (/usr/lib/node_modules/pm2/node_modules/commander/index.js:315:8)
    at emitOne (events.js:116:13)
Error: ENOENT: no such file or directory, open '/.pm2/module_conf.json'
    at Object.fs.openSync (fs.js:646:18)
    at Object.fs.writeFileSync (fs.js:1299:33)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:148:10)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.instanciate (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:65:16)
    at Command.<anonymous> (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:48:13)
    at Command.listener (/usr/lib/node_modules/pm2/node_modules/commander/index.js:315:8)
    at emitOne (events.js:116:13)
    at Command.emit (events.js:211:7)
Error: EACCES: permission denied, mkdir '/.pm2'
    at Object.fs.mkdirSync (fs.js:885:18)
    at sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:71:13)
    at Function.sync (/usr/lib/node_modules/pm2/node_modules/mkdirp/index.js:77:24)
    at module.exports.Client.initFileStructure (/usr/lib/node_modules/pm2/lib/Client.js:156:25)
    at new module.exports (/usr/lib/node_modules/pm2/lib/Client.js:37:8)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:108:19)
    at Object.instanciate (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:65:16)
    at Command.<anonymous> (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:48:13)
    at Command.listener (/usr/lib/node_modules/pm2/node_modules/commander/index.js:315:8)
    at emitOne (events.js:116:13)
Error: ENOENT: no such file or directory, open '/.pm2/module_conf.json'
    at Object.fs.openSync (fs.js:646:18)
    at Object.fs.readFileSync (fs.js:551:33)
    at Object.Configuration.getAllSync (/usr/lib/node_modules/pm2/lib/Configuration.js:295:26)
    at Object.Configuration.getSync (/usr/lib/node_modules/pm2/lib/Configuration.js:266:30)
    at new API (/usr/lib/node_modules/pm2/lib/API.js:117:36)
    at Object.instanciate (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:65:16)
    at Command.<anonymous> (/usr/lib/node_modules/pm2/lib/binaries/Runtime4Docker.js:48:13)
    at Command.listener (/usr/lib/node_modules/pm2/node_modules/commander/index.js:315:8)
    at emitOne (events.js:116:13)
    at Command.emit (events.js:211:7)
2019-06-25T15:15:34: PM2 log: Launching in no daemon mode
2019-06-25T15:15:34: PM2 error: Error: ENOENT: no such file or directory, open '/.pm2/pm2.pid'
    at Object.fs.openSync (fs.js:646:18)
    at Object.fs.writeFileSync (fs.js:1299:33)
    at module.exports.Daemon.innerStart (/usr/lib/node_modules/pm2/lib/Daemon.js:89:8)
    at /usr/lib/node_modules/pm2/lib/Client.js:77:14
    at /usr/lib/node_modules/pm2/lib/Client.js:311:14
    at _combinedTickCallback (internal/process/next_tick.js:132:7)
    at process._tickCallback (internal/process/next_tick.js:181:9)
