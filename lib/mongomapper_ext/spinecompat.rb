# Extensions to improve spine compatibility on models
module MongoMapper
  module SpineCompat
    def created_at=(time=Time.now)
      time = Time.at(time) if time.is_a?(Integer)
      super(time)
    end

    def created_at_int
      created_at.to_i
    end

    def created_at_friendly
      return self.created_at.strftime("%b %d, %Y")
    end

    # Don't allow setting of ID. Forces use of MongaMapper IDs. Otherwise Spine will overwrite the IDs.
    # Since many MongoMapper plugins expect ObjectIds as IDs it's best to not allow them to overwrite things.
    def id=(id)
      return
    end
  end
end