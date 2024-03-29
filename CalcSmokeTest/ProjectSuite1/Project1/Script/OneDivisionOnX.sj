//USEUNIT GUINavigation
//USEUNIT LogModifications
 
function Main()
{
  try
  {
     createVar();

     simpleOperations();
     bigValueOperations();
     boundaryOperations();
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
  //1/50=0,02
  var strDecimalNumber1=new String();
  strDecimalNumber1="0,02";
  resultLog(calculation(50,0,8,strDecimalNumber1),Log.AppendFolder("One division on X simple operations. Case 1"));
  //1/2=0,5
  var strDecimalNumber2=new String();
  strDecimalNumber2="0,5";
  resultLog(calculation(2,0,8,strDecimalNumber2),Log.AppendFolder("One division on X simple operations. Case 2"));
} 
//------------------------------------------------------------------------------
function bigValueOperations()
{
  //1/3333333333=3,0000000003e-10
  var strDecimalNumber3=new String();
  strDecimalNumber3="3,0000000003e-10";
  resultLog(calculation(3333333333,0,8,strDecimalNumber3),Log.AppendFolder("One division on X(large number). Case 1"));
  //1/9999999999=1,0000000001e-10
  var strDecimalNumber4=new String();
  strDecimalNumber4="1,0000000001e-10";
  resultLog(calculation(9999999999,0,8,strDecimalNumber4),Log.AppendFolder("One division on X(large number). Case 2"));
}
//------------------------------------------------------------------------------
function boundaryOperations()
{
  //1/1=1
  resultLog(calculation(1,0,8,1),Log.AppendFolder("One division on X (boundary operations). Case 1"));
} 
//------------------------------------------------------------------------------
function specificCases() 
{
  //1/0=Cannot divide by zero 
  var strZero=new String();
  strZero="Cannot divide by zero";
  resultLog(calculation(0,0,8,strZero),Log.AppendFolder("Division. Specific cases. Case 1"));
}
//------------------------------------------------------------------------------

