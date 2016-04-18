require "json"
run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, [env.to_json]] }
