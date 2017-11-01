# Chapter 14

# Better Program Logger

$indent = 0

def log(string, &block)
  indent_string = "  " * $indent
  puts "#{indent_string}Beginning #{string}..."
  $indent += 1
  output = block.call
  $indent -= 1
  puts "#{indent_string}... #{string} finished, returning: #{output}"
end

log "outer block" do
  log "some little block" do
    log "teeny-tiny block" do
      "lots of love"
    end
    42
  end
  log "yet another block" do
    "I like Indian food"
  end
  true
end