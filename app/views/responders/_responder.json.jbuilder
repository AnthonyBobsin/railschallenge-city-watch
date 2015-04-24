json.extract! responder, :name, :capacity, :on_duty, :emergency_code
json.set! :type, responder.type.capitalize
