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
     multiAddOperations(); 
     
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
  //4+7=11
  resultLog(calculation(4,7,1,11),Log.AppendFolder("Addition simple operations. Case 1"));
  //11+32=43 
  resultLog(calculation(11,32,1,43),Log.AppendFolder("Addition simple operations. Case 2"));
} 
//------------------------------------------------------------------------------
function boundaryOperations()
{
  //0+0=0
  resultLog(calculation(0,0,1,0),Log.AppendFolder("Boundary operations. Case 1"));
  //0+1000=1000
  resultLog(calculation(0,1000,1,1000),Log.AppendFolder("Boundary operations. Case 2"));
  //1+99=100 
  resultLog(calculation(1,99,1,100),Log.AppendFolder("Boundary operations. Case 3"));
} 
//------------------------------------------------------------------------------
function bigValueOperations()
{
  //9999999999+8888888888=18888888887
  resultLog(calculation(9999999999,8888888888,1,18888888887),Log.AppendFolder("Addition of large numbers. Case 1"));
  //4444444444+7777777777=12222222221 
  resultLog(calculation(4444444444,7777777777,1,12222222221),Log.AppendFolder("Addition of large numbers. Case 2"));
}
//------------------------------------------------------------------------------
function multiAddOperations()
{
  //1+2+3+4+5+6+7+8+9=45
  resetOperationClick(); 
  for(i=0; i<10; i++)
  {
    numberClicking(i);
    addOperationClick();
  }
  if(getResultValue()!=45)
  {
    resultLog(1,Log.AppendFolder("Addition with multiple '+' clicking. Case 1")); 
  }
  else
  {
    resultLog(0,Log.AppendFolder("Addition with multiple '+' clicking. Case 1"));
  }
}

