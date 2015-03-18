publicAssets  = './public/assets'
sourceFiles   = './gulp/assets'

module.exports =
  publicAssets: publicAssets

  browserSync:
    proxy: 'localhost:3000'
    files: [ './app/views/**' ]

  react:
    src: sourceFiles + '/javascripts/react/*.jsx'
    dest: publicAssets + '/javascripts/components'

  sass:
    src: sourceFiles + '/stylesheets/**/*.{sass, scss}'
    dest: publicAssets + '/stylesheets'
    settings:
      indentedSyntax: true
      imagePath: '/assets/images'
      errLogToConsole: true

  images:
    src: sourceFiles + '/images/**'
    dest: publicAssets + '/images'

  fontIcons:
    name: 'Font Icons'
    src: sourceFiles + '/icons/*.svg'
    dest: publicAssets + '/fonts'
    sassDest: sourceFiles + '/stylesheets/base'
    template: './gulp/tasks/fontIcons/template.sass'
    sassOutputName: '_font_icons.sass'
    fontPath: '/assets/fonts'
    className: 'icon'
    options:
      fontName: 'font-icons'
      appendCodepoints: true
      normalize: false

  browserify: bundleConfigs: [ {
    entries: [
      './node_modules/react/dist/react.js'
      sourceFiles + '/javascripts/global.coffee'
    ]
    dest: publicAssets + '/javascripts'
    outputName: 'global.js'
    extensions: [ '.js', '.coffee' ]
    debug: !process.env.RAILS_ENV == 'production'
  } ]
