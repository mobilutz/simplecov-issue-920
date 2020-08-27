# frozen_string_literal: true

class Logger
  class TimestampFormatter < Logger::Formatter
    def call(severity, time, _progname, msg)
      # msg2str is the internal helper that handles different msgs correctly
      "#{time.to_s(:m_sec)} #{$PROCESS_ID} [#{severity}] #{msg2str(msg)}\n"
    end
  end
end
