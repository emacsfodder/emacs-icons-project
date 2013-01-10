# -*- coding: utf-8 -*-
require 'mustache'
require 'yaml'

def getFontSize n
  case n
  when 1..3 then return 130
  when 4..7 then return 120
  when 8..9 then return 110
  else return 100
  end
end

def makeIconsSvg types, template

  types.each { |t|
    rendered = Mustache.render(template, {lang: t, fontsize: getFontSize(t.length)})
    File.open("#{t}-icon.svg", "w"){|f|
      f.write rendered
    }
  }

end

template = File.read("doc-icon.mustache")
types = YAML.load_file("doc-types.yaml")

makeIconsSvg types, template

puts "SVG icons regenerated"


