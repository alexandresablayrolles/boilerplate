replacer = (replacePlugin, placeholder, target) ->
  replacePlugin new RegExp(placeholder, 'g'), target

bowerModule = require '../../bower.json'
moduleName = bowerModule.name
modulePlaceholder = '%module%'

srcPath = 'src'
assetsPlaceholder = '%assets%'
assetsFolder = 'assets'
assetsPath = "#{srcPath}/common/#{assetsFolder}"

wwwPath = 'www'
scriptsPlaceholder = '%scripts%'
scriptsFolder = 'js'
scriptsPath = "#{wwwPath}/#{scriptsFolder}"
stylesPlaceholder = '%styles%'
stylesFolder = 'css'
stylesPath = "#{wwwPath}/#{stylesFolder}"

imagesFolder = 'img'
imagesPath = "#{wwwPath}/#{imagesFolder}"

config =

  paths:
    src:
      main: srcPath
      assets: assetsPath
      styles: "#{srcPath}/common/styles"
      images: "#{srcPath}/common/images"
      i18n: 'i18n'
    www:
      main: wwwPath
      scripts: scriptsPath
      styles: stylesPath
      images: imagesPath

  folders:
    scripts:
      name: scriptsFolder
      replacer: (replace) -> replace scriptsPlaceholder, scriptsFolder
    styles:
      name: stylesFolder
      replacer: (replace) -> replace stylesPlaceholder, stylesFolder

  files:
    app: 'app.js'
    styles: 'app.css'
    templates: 'templates.js'
    vendors:
      scripts: 'vendor.js'
      styles: 'vendor.css'

  angular:
    module:
      name: moduleName
      placeholder: modulePlaceholder
      # Include the replace in the streams where needed
      replacer: (replace) -> replace modulePlaceholder, moduleName

  analytics:
    id: 'UA-XXXXXXXX-X'
    domain: 'doma.in'

module.exports = config
