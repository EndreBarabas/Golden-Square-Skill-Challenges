#As a user
#So that I can keep track of my music listening
#I want to add tracks I've listened to and see a list of them.

class Tracker
  def initialize()
    @tracklist = [] # creates a tracklist array
  end
  
  def add(track) #track is a string
    @tracklist.push(track)
    # adds a track to the tracklist
    # returns nothing
  end

  def show()
    return @tracklist.join(", ") #returns the elements of tracklist
  end
end