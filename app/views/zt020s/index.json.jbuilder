json.array!(@zt020s) do |zt020|
  json.extract! zt020, :id, :IDUSER, :TXNAME, :TXPASSWORD
  json.url zt020_url(zt020, format: :json)
end
