# TubeFrame

A simple gem to embed Youtube or Vimeo videos with a url.

## Installation

Add this line to your application's Gemfile:

    gem 'tube_frame'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tube_frame

## Usage

    <%= raw Frame.embed_url("youtube_or_vimeo_video_url", frame_width, frame_height) %>

frame_width and frame_height are optional values with default values of 420 and 315 respectively.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
