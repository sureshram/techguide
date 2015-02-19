db.logins.findOne()

db.logins.aggregate([ 
  { 
     $group: {
        _id: "$Login Action",
        count : {$sum: 1} 
    }
  } 
 ])

 
db.logins.aggregate([ 
  { 
     $group: {
        _id: { month : { $month : "$timestamp" }, day: { $dayOfMonth: "$timestamp" }, year: { $year: "$timestamp" } },
        count : {$sum: 1} 
    }
  } 
 ])
 
 #### Convert String data to date object format
 
db.logins.find().forEach(function(el) {
    el.date = new ISODate(el.TIMESTAMP);
    db.logins.save(el)
});