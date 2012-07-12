
class Support

    attr_accessor :support, :request

    def initialize(raw, request)
        @request = request
        @support = parse(raw)
        @support << user_agent
    end

    def user_agent
        ['navigator.userAgent', request.env['HTTP_USER_AGENT']]
    end
    
    def parse(raw)
        raw.split(',').map do |test|
            tokens = test.split(':')
            [tokens.first, tokens[1]]
        end
    end

    def to_s
        report = @support.sort.map { |tokens| "%25s %s" % [ tokens.first, tokens[1] ] }
        puts "%27s\n%s\n%27s" % ['---', report.join("\n"), '---']
    end

end

