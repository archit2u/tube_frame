require "tube_frame/version"

class Frame
    URL_Formats = {
        youtube: /^(https?:\/\/)?(www\.)?youtube.com\/watch\?(.*\&)?v=([^&]+)/,
        youtube_shortened: /^(https?:\/\/)?(www\.)?youtu.be\/([^&]+)/,
        vimeo: /^(https?:\/\/)?(wwww\.)?vimeo.com\/?(.*)/,
        invalid_chars: /[^a-zA-Z0-9\:\/\?\=\&\$\-\_\.\+\!\*\'\(\)\,]/
    }

    def self.embed_url(vid, width = 420, height=315 )
        return nil if has_invalid_chars?(vid)

        if match = URL_Formats[:youtube].match(vid) 
            vid_id = match[4]
            %(<iframe width="#{width}" height="#{height}" src="http://www.youtube.com/embed/#{vid_id}" frameborder="0" allowfullscreen></iframe>)
        elsif match = URL_Formats[:youtube_shortened].match(vid)
            vid_id = match[3]
            %(<iframe width="#{width}" height="#{height}" src="http://www.youtube.com/embed/#{vid_id}" frameborder="0" allowfullscreen></iframe>)
        elsif match = URL_Formats[:vimeo].match(vid)
            vid_id = match[3]
            %(<iframe src="//player.vimeo.com/video/#{vid_id}" width="#{width}" height="#{height}" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>)
        else
            return nil
        end

    end


    def self.has_invalid_chars?(vid)
        !URL_Formats[:invalid_chars].match(vid).nil?
    end

end
