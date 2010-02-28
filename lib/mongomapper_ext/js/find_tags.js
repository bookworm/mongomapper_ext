function findTags(collection, regex, query, limit) {
  var tags = db.eval(
    function(collection, regex, query){
      var tags = [];
      db[collection].find(query, {"tags":1}).limit(500).forEach(
        function(p){
          if ( p.tags ){
            for ( var i=0; i<p.tags.length; i++ ){
              var name = p.tags[i];
              if(name.match(regex) != null && tags.indexOf(name) == -1)
                tags.push(name);
            }
          }
        }
      );
      return tags;
    },
    collection,
    regex,
    query
  );

  return tags.slice(0,limit||30);
}
