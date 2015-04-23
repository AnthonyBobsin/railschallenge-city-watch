json.responder do
    json.emergency_code @responder.emergency_code
    json.type @responder.type
    json.name @responder.name
    json.capacity @responder.capacity
    json.on_duty(@responder.on_duty ? true : false)
end
