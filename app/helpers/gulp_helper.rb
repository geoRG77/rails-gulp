module GulpHelper

  def gulp_asset_path(path)
    path = REV_MANIFEST[path] if defined?(REV_MANIFEST)
    "/assets/#{path}"
  end

  def image_tag(image, options = {})
    source = "images/#{image}"
    alt = File.basename(image, File.extname(image)).capitalize
    options.reverse_merge! alt: alt
    super(gulp_asset_path(source), options)
  end

end
