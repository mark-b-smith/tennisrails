json.array!(@players) do |player|
  json.extract! player, :id, :first, :last, :full_charge, :play_singles, :pref9, :only9, :active
  json.url player_url(player, format: :json)
end
