json.array!(@kitty_trans) do |kitty_tran|
  json.extract! kitty_tran, :id, :pID, :amount, :credit, :mID
  json.url kitty_tran_url(kitty_tran, format: :json)
end
