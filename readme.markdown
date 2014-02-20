*This repository is a mirror of the [component](http://component.io) module [juliangruber/pause-stream](http://github.com/juliangruber/pause-stream). It has been modified to work with NPM+Browserify. You can install it using the command `npm install npmcomponent/juliangruber-pause-stream`. Please do not open issues or send pull requests against this repo. If you have issues with this repo, report it to [npmcomponent](https://github.com/airportyh/npmcomponent).*
# PauseStream

This is a `Stream` that will strictly buffer when paused.
Connect it to anything you need buffered.

``` js
  var ps = require('pause-stream')();

  badlyBehavedStream.pipe(ps.pause())

  aLittleLater(function (err, data) {
    ps.pipe(createAnotherStream(data))
    ps.resume()
  })
```

`PauseStream` will buffer whenever paused.
it will buffer when yau have called `pause` manually.
but also when it's downstream `dest.write()===false`.
it will attempt to drain the buffer when you call resume
or the downstream emits `'drain'`

`PauseStream` is tested using [stream-spec](https://github.com/dominictarr/stream-spec)
and [stream-tester](https://github.com/dominictarr/stream-tester)
