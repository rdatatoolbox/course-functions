
function Meta(meta)

  -- Default favicon
  local favicon = "assets/favicon-32x32.png"

  -- Custom favicon supplied by the user
  local custom = quarto.metadata.get("favicon")

  if custom then
    favicon = pandoc.utils.stringify(custom)
  end

  -- Inject favicon into HTML header
  local html = string.format(
    '<link rel="icon" type="image/png" sizes="32x32" href="%s">',
    favicon
  )

  quarto.doc.include_text("in-header", html)

  return meta
end
