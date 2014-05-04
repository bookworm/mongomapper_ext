module MongoMapperExt
	# Friendly destruction of models.
	# We hold onto important things like accounts for a short period in case a user changes his mind.
	class Archive
	  include MongoMapper::Document
	end

	module Archiver
	  # Instead of deleting archive this
	  def archive
	    doc = self.to_mongo
	    doc[:type] = self.class.to_s.downcase
	    Archive.collection.save(doc, :safe => true)
	    return self.destroy
	  end
	end
end
