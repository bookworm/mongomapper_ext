module MongoMapperExt
  module Markdown     
    def self.included(klass)
      klass.class_eval do   
        extend ClassMethods
        before_save :gen_markdown      
        before_update :gen_markdown
      end   
    end    
    
    def gen_markdown()  
      self.class.mdkeys.each do |k|    
        key_name = "#{k}_src"  
        eval("self.#{key_name} = self.#{k}")   
        eval("self.#{k} = self.parse(self.#{key_name}).to_html") 
      end
    end       
  
    def parse(text)   
      self.class.parser ||= 'redcarpet'    
      parser = self.class.parser
      Redcarpet.new(text) if parser == 'redcarpet'     
      Kramdown::Document.new(text) if parser == 'kramdown'
    end  
    
    module ClassMethods
           
      def markdown(*keys)   
        keys.each_with_index do |k, index|  
          if k.is_a?(Hash) 
            @parser = k[:parser] 
            keys.delete_at(index) 
          end 
        end 
        @mdkeys = keys
        @mdkeys.each do |k|     
          key_name = "#{k}_src"   
          puts key_name.to_sym
          self.key key_name.to_sym, String 
        end
      end     
      class_eval do   
        attr_reader :parser
        attr_reader :mdkeys
      end        
    end
  end
end