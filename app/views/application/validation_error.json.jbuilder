@error_messages.to_hash.each do |field, message|
  json.set! field do
    json.error message.first
  end
end
