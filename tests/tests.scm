((files
  ("inventory.scm"
   (rnrs exceptions)
   (spells misc)
   (spells foof-loop)
   (dorodango inventory))
  ("database.scm"
   (rnrs control)
   (rnrs exceptions)
   (rnrs sorting)
   (spells foof-loop)
   (spells pathname)
   (spells filesys)
   (spells logging)
   (dorodango private utils)
   (dorodango inventory)
   (dorodango package)
   (dorodango destination)
   (dorodango database))
  ("solver.scm"
   (spells match)
   (spells fmt)
   (dorodango solver dummy-db)
   (dorodango solver universe)
   (dorodango solver))))
