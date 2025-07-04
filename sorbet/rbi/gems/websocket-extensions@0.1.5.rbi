# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `websocket-extensions` gem.
# Please instead update this file by running `bin/tapioca gem websocket-extensions`.


# source://websocket-extensions//lib/websocket/extensions.rb#1
module WebSocket; end

# source://websocket-extensions//lib/websocket/extensions.rb#2
class WebSocket::Extensions
  # @return [Extensions] a new instance of Extensions
  #
  # source://websocket-extensions//lib/websocket/extensions.rb#10
  def initialize; end

  # source://websocket-extensions//lib/websocket/extensions.rb#75
  def activate(header); end

  # source://websocket-extensions//lib/websocket/extensions.rb#19
  def add(ext); end

  # source://websocket-extensions//lib/websocket/extensions.rb#157
  def close; end

  # source://websocket-extensions//lib/websocket/extensions.rb#48
  def generate_offer; end

  # source://websocket-extensions//lib/websocket/extensions.rb#100
  def generate_response(header); end

  # source://websocket-extensions//lib/websocket/extensions.rb#137
  def process_incoming_message(message); end

  # source://websocket-extensions//lib/websocket/extensions.rb#147
  def process_outgoing_message(message); end

  # source://websocket-extensions//lib/websocket/extensions.rb#120
  def valid_frame_rsv(frame); end

  # source://websocket-extensions//lib/websocket/extensions.rb#135
  def valid_frame_rsv?(frame); end

  private

  # source://websocket-extensions//lib/websocket/extensions.rb#167
  def reserve(ext); end

  # @return [Boolean]
  #
  # source://websocket-extensions//lib/websocket/extensions.rb#173
  def reserved?(ext); end
end

# source://websocket-extensions//lib/websocket/extensions.rb#6
class WebSocket::Extensions::ExtensionError < ::ArgumentError; end

# source://websocket-extensions//lib/websocket/extensions.rb#8
WebSocket::Extensions::MESSAGE_OPCODES = T.let(T.unsafe(nil), Array)

# source://websocket-extensions//lib/websocket/extensions/parser.rb#83
class WebSocket::Extensions::Offers
  # @return [Offers] a new instance of Offers
  #
  # source://websocket-extensions//lib/websocket/extensions/parser.rb#84
  def initialize; end

  # source://websocket-extensions//lib/websocket/extensions/parser.rb#101
  def by_name(name); end

  # source://websocket-extensions//lib/websocket/extensions/parser.rb#95
  def each_offer(&block); end

  # source://websocket-extensions//lib/websocket/extensions/parser.rb#89
  def push(name, params); end

  # source://websocket-extensions//lib/websocket/extensions/parser.rb#105
  def to_a; end
end

# source://websocket-extensions//lib/websocket/extensions/parser.rb#6
class WebSocket::Extensions::Parser
  class << self
    # source://websocket-extensions//lib/websocket/extensions/parser.rb#17
    def parse_header(header); end

    # source://websocket-extensions//lib/websocket/extensions/parser.rb#60
    def serialize_params(name, params); end
  end
end

# source://websocket-extensions//lib/websocket/extensions/parser.rb#11
WebSocket::Extensions::Parser::EXT = T.let(T.unsafe(nil), Regexp)

# source://websocket-extensions//lib/websocket/extensions/parser.rb#12
WebSocket::Extensions::Parser::EXT_LIST = T.let(T.unsafe(nil), Regexp)

# source://websocket-extensions//lib/websocket/extensions/parser.rb#8
WebSocket::Extensions::Parser::NOTOKEN = T.let(T.unsafe(nil), Regexp)

# source://websocket-extensions//lib/websocket/extensions/parser.rb#13
WebSocket::Extensions::Parser::NUMBER = T.let(T.unsafe(nil), Regexp)

# source://websocket-extensions//lib/websocket/extensions/parser.rb#10
WebSocket::Extensions::Parser::PARAM = T.let(T.unsafe(nil), Regexp)

# source://websocket-extensions//lib/websocket/extensions/parser.rb#15
class WebSocket::Extensions::Parser::ParseError < ::ArgumentError; end

# source://websocket-extensions//lib/websocket/extensions/parser.rb#9
WebSocket::Extensions::Parser::QUOTED = T.let(T.unsafe(nil), Regexp)

# source://websocket-extensions//lib/websocket/extensions/parser.rb#7
WebSocket::Extensions::Parser::TOKEN = T.let(T.unsafe(nil), Regexp)

module WebSocket::Mask
  class << self
    def mask(_arg0, _arg1); end
  end
end
