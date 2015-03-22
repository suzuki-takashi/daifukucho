json.array!(@zt010s) do |zt010|
  json.extract! zt010, :id, :IDVARIANT, :TXNAME, :TXTYPE, :TXVALUE, :TXREMARKS
  json.url zt010_url(zt010, format: :json)
end
