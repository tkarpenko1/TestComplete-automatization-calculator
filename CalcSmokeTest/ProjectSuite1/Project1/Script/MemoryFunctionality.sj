//USEUNIT GUINavigation
//USEUNIT LogModifications
//USEUNIT Clear
 
function Main()
{
  try
  {
     createVar();

     simpleOperations();
     
     deleteVar();
  }
  catch(exception)
  {
    Log.Error("Exception", exception.description);
  }
}

//------------------------------------------------------------------------------
function simpleOperations()
{
  //24+256(from memory)=280
  resultLog(calculationWithMemory(256,24,0,1,280),Log.AppendFolder("Memory simple operations. Case 1"));
  //1+(18(from memory)+35(from memory))=54
  resultLog(calculationWithMemory(18,35,1,2,54),Log.AppendFolder("Memory simple operations. Case 2"));
  //333(from memory)-30(from memory))-3=300
  resultLog(calculationWithMemory(30,3,400,3,367),Log.AppendFolder("Memory simple operations. Case 3"));
  
} 
