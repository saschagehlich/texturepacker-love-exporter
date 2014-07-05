-- Created with TexturePacker (http://www.codeandweb.com/texturepacker)
-- {{smartUpdateKey}}

local {{texture.trimmedName}} = {
  sheet = {
    name = "{{texture.fullName}}",
    width = {{texture.size.width}},
    height = {{texture.size.height}}
  },
  frames = {
  {% for sprite in allSprites %}  ["{{sprite.trimmedName}}"] = {
      frame = love.graphics.newQuad({{sprite.frameRect.x}}, {{sprite.frameRect.y}}, {{sprite.frameRect.width}}, {{sprite.frameRect.height}}, {{texture.size.width}}, {{texture.size.height}}),
      offset = Vector2({{sprite.sourceRect.x}}, {{sprite.sourceRect.y}}),
      originalSize = Vector2({{sprite.untrimmedSize.width}}, {{sprite.untrimmedSize.height}})
    }{% if not forloop.last %},{% endif %}
  {% endfor %}}
}

return {{texture.trimmedName}}
