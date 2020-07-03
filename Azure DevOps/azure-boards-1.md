## azure boards types:
  1 basic:
     workitems:
        EPIC
        ISSUE
        TASK
     workflow:
       to do
       doing
       done
  2 agile:
     workitem:
       EPIC 
         feature 
           user story
             task: new development
             bug: functional implemented in wrong way
        ISSUE:
        Test case:
    workflow:
       new
       active
       resolved
       closed
  3 scrum
  4 CMMI 




  build pipeline:
     build tools:

     jenkins master 
     setup maven 

     build java code:
        maven
          azure provides agents
             maven agent  --hosted agent
               * not maintain build history
               * build code
               * put in artifact
                  then its better
             self hosted agent 
               * self hosted agent 


  release pipeline



  pipeline:
      build : CI
        maven + artifact + test   ==> artifact
      release: CD
         war or dll collect from artifact deploy into target 
             

mvn package == mvn compile + mvn test + mvn package

 mvn package -Dmaven.test.skip=true

           
