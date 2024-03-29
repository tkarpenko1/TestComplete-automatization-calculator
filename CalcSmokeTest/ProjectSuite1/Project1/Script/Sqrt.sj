//USEUNIT GUINavigation
//USEUNIT LogModifications
 
function Main()
{
  try
  {
     createVar();

     simpleOperations();
     bigValueOperations();
     multiSqrtOperations();
     specificCases();
     
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
  //sqrt(16)=4
  resultLog(calculation(16,0,5,4),Log.AppendFolder("Sqrt simple operations. Case 1"));
  //sqrt(4)=2
  resultLog(calculation(4,0,5,2),Log.AppendFolder("Sqrt simple operations. Case 2"));
} 
//------------------------------------------------------------------------------
function bigValueOperations()
{
  //sqrt(111110888889)=333333
  resultLog(calculation(111110888889,0,5,333333),Log.AppendFolder("Sqrt of large numbers. Case 1"));
}
//------------------------------------------------------------------------------
function multiSqrtOperations()
{
  //sqrt(sqrt(sqrt(sqrt(sqrt(sqrt(4294967296)))))) 
  resultLog(calculation(4294967296,0,6,2),Log.AppendFolder("Sqrt with multiple 'sqrt' clicking. Case 1"));
}
//------------------------------------------------------------------------------
function specificCases() 
{
  //sqrt(0)=0
  resultLog(calculation(0,0,5,0),Log.AppendFolder("Sqrt. Specific cases. Case 1"));
  //sqrt(1)=1
  resultLog(calculation(1,0,5,1),Log.AppendFolder("Sqrt. Specific cases. Case 2"));
  //sqrt(-9)=Invalid input
  resetOperationClick(); 
  numberClicking(9);
  plusMinusOperationClick();
  sqrtOperationClick();
  resultOperationClick();
  var sqrtNegative=new String();
  sqrtNegative="Invalid input";
   if(getResultValue()!=sqrtNegative)
  {
    resultLog(1,Log.AppendFolder("Sqrt. Specific cases. Case 3")); 
  }
  else
  {
    resultLog(0,Log.AppendFolder("Sqrt. Specific cases. Case 3"));
  }
}

