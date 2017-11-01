# Chapter 14

# Program Logger

def log(string, &block)
  puts "Beginning #{string}..."
  output = block.call
  puts "... #{string} finished, returning:"
  p output 
end

log "outer block" do
  log "some little block" do
    5
  end
  log "yet another block" do
    "I like Thai food"
  end
  false
end