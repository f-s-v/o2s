json.(resource, :slug, :title, :poster, :info, :price, :published, :allow_preorder, :taxons, :variants, :extras)
json.photos resource.photos do |photo|
  json.url photo.url
  json.option_ids photo.option_ids
end