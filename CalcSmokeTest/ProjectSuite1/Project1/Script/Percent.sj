//USEUNIT GUINavigation
//USEUNIT LogModifications
 
function Main()
{
  try
  {
     createVar();

     simpleOperations();
     boundaryOperations();
     bigValueOperations();
     
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
  //100+5%=105
  resultLog(calculation(100,5,7,105),Log.AppendFolder("Simple operations with percent. Case 1"));
  //20+10%=22
  resultLog(calculation(20,10,7,22),Log.AppendFolder("Simple operations with percent. Case 2"));
}
//------------------------------------------------------------------------------
function boundaryOperations()
{
  //0+0%=0
  resultLog(calculation(0,0,7,0),Log.AppendFolder("Boundary operations. Case 1"));
  //0+1000%=0
  resultLog(calculation(0,1000,7,0),Log.AppendFolder("Boundary operations. Case 1"));
  //1000+0%=1000 
  resultLog(calculation(1000,0,7,1000),Log.AppendFolder("Boundary operations. Case 3"));
  //1000+100%=2000 
  resultLog(calculation(1000,100,7,2000),Log.AppendFolder("Boundary operations. Case 4"));
  
} 
//------------------------------------------------------------------------------
function bigValueOperations()
{
  //9999999999+100%=19999999998
  resultLog(calculation(9999999999,100,7,19999999998),Log.AppendFolder("Addition percent for large numbers. Case 1"));
  //1000+1000000000%=10000001000
  resultLog(calculation(1000,1000000000,7,10000001000),Log.AppendFolder("Addition percent for large numbers. Case 2"));
}



 