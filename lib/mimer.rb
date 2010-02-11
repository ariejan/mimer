# Mimer find a file's mime-type using unix' `file` command. It will never 
# look at a file's extension.
#
# Basic usage:
# 
#    mimer = Mimer.identify('/tmp/testfile')
#    => #<Mimer:0x9f @filename="/tmp/testfile", @mime_type="image/jpeg; charset=binary">
#    
#    mimer.mime_type
#    => "image/jpeg; charset=binary"
#
#    mimer.text?
#    => false
#
#    mimer.image?
#    => true
#
class Mimer
  
  # Create a new Mimer object for the specified file.
  def self.identify(filename)
    return nil if !File.exists?(filename)
    return Mimer.new(filename)
  end
  
  # Find the mime type for +filename+
  def initialize(filename)
    @filename = filename
    identify
  end
  
  # Returns the mime-type in string form.
  def mime_type
    @mime_type
  end
  
  # Suggests an extention to use like .jpg or .png
  def suggested_extension
    case(mime_type)
    when /^image\/jpeg/   : '.jpg'
    when /^image\/gif/    : '.gif'
    when /^image\/png/    : '.png'
    else
      nil
    end
  end
    
  # Returns true if the file is a text file.
  def text?
    mime_type.match /^text\/.*/i
  end

  # Returns true if the file is an image file.
  def image?
    mime_type.match /^image\/.*/i
  end
  
  # Returns true if the file is a video file.
  def video?
    mime_type.match /^video\/.*/i
  end
  
  # Returns true if the file is an audio file.
  def audio?
    mime_type.match /^audio\/.*/i
  end
  
  private
  
    # Identifies the file and stores the result in +@mime_type+
    def identify
      @mime_type = `/usr/bin/env file --brief --mime #{@filename}`.strip
    end
  
end