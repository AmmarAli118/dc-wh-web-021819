class Tweet

    attr_reader :message, :user

    @@all = []

    def initialize(message, user)
        @message, @user = message, user
        @@all << self
    end

    def self.all
        @@all
    end

    def username
        self.user.username
    end

    def likers
      Like.all.select{|like| like.tweet == self }
            .collect {|like| like.user}
    end

end
