//USEUNIT DynamicMappingInfo
//USEUNIT LogModifications  

// function gets Number and  sets number into the calc via digit buttons   
function numberClicking(intDigitValue)
{
  var strTempDigit=new String();
  strTempDigit=intDigitValue;
  
  var intStrLength;
  intStrLength=aqString.GetLength(strTempDigit);
  
  for(var i=0; i<intStrLength;i++)
  {  
    setVar(aqString.GetChar(strTempDigit,i)); 
    Aliases.Sys.calc.wndCalculator.btnDigit.ClickButton();
  }
}
//------------------------------------------------------------------------------
function calculation(intDigitValue1,intDigitValue2,strOperation,strExpResult)
{
  resetOperationClick();
  numberClicking(intDigitValue1);
  
  switch(strOperation)
  {
    case 1:
    addOperationClick();
    break;
    case 2:
    subtractionOperationClick();
    break;
    case 3:
    multiplicatioOperationClick();
    break;
    case 4:
    divisionOperationClick();
    break;
    case 5:
    sqrtOperationClick();
    break;
    case 6:
    for(i=0; i<5; i++)
    {
    sqrtOperationClick();
    }
    break;
    case 7:
    addOperationClick();
    break;
    case 8:
    oneDivisionOnXOperationClick()
    break;
  }
  
  if(strOperation!=5&&strOperation!=6&&strOperation!=8)
  numberClicking(intDigitValue2); 
  if(strOperation==7)
  percentOperationClick();
  
  resultOperationClick();
  var result=getResultValue();
   
  if(getResultValue()!=strExpResult)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

//------------------------------------------------------------------------------
function calculationWithMemory(intDigitValue1,intDigitValue2,intDigitValue3,strOperation,strExpResult)
{
  resetOperationClick();
  MCOperationClick();
  numberClicking(intDigitValue1);
  
  switch(strOperation)
  {
    case 1:
    MSOperationClick();
    break;
    case 2:
    MplusOperationClick();
    break;
    case 3:
    MminusOperationClick();
    break;
  }
  resetOperationClick();
  numberClicking(intDigitValue2); 
 if(strOperation!=1){
  switch(strOperation)
    {
      case 2:
      MplusOperationClick();
      break;
      case 3:
      MminusOperationClick();
      break;
    }
    resetOperationClick();
    numberClicking(intDigitValue3);
  }
  
  addOperationClick();
  MROperationClick();
  resultOperationClick();
  var result=getResultValue();
   
  if(getResultValue()!=strExpResult)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}
//------------------------------------------------------------------------------

function addOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnAdd.Exists!=true)
  {
    btnIsAbsentWarning("+");
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnAdd.ClickButton();
  }
}
//------------------------------------------------------------------------------
function subtractionOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnSubtraction.Exists!=true)
  {
    btnIsAbsentWarning("-");
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnSubtraction.ClickButton();
  }
}
//------------------------------------------------------------------------------
function multiplicatioOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnMultiplication.Exists!=true)
  {
    btnIsAbsentWarning("*"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnMultiplication.ClickButton();
  }
}
//------------------------------------------------------------------------------
function divisionOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnDivision.Exists!=true)
  {
    btnIsAbsentWarning("/"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnDivision.ClickButton();
  }
}
//------------------------------------------------------------------------------
function sqrtOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnRadical.Exists!=true)
  {
    btnIsAbsentWarning("sqrt");
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnRadical.ClickButton();
  }
}
//------------------------------------------------------------------------------
function percentOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnPercent.Exists!=true)
  {
    btnIsAbsentWarning("%");
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnPercent.ClickButton();
  }
}
//------------------------------------------------------------------------------
function oneDivisionOnXOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnOneDivisionOnX.Exists!=true)
  {
    btnIsAbsentWarning("1/x");
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnOneDivisionOnX.ClickButton();
  }
}
//------------------------------------------------------------------------------
function plusMinusOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnPlusMinus.Exists!=true)
  {
    btnIsAbsentWarning("+-"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnPlusMinus.ClickButton();
  }
}
//------------------------------------------------------------------------------
function MCOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnMC.Exists!=true)
  {
    btnIsAbsentWarning("MC"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnMC.ClickButton();
  }
}
//------------------------------------------------------------------------------
function MSOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnMS.Exists!=true)
  {
    btnIsAbsentWarning("MS"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnMS.ClickButton();
  }
}
//------------------------------------------------------------------------------
function MplusOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnMplus.Exists!=true)
  {
    btnIsAbsentWarning("Mplus"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnMplus.ClickButton();
  }
}
//------------------------------------------------------------------------------
function MminusOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnMminus.Exists!=true)
  {
    btnIsAbsentWarning("Mminus"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnMminus.ClickButton();
  }
}
//------------------------------------------------------------------------------
function MROperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnMR.Exists!=true)
  {
    btnIsAbsentWarning("MR"); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnMR.ClickButton();
  }
}
//------------------------------------------------------------------------------
function resultOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnResult.Exists!=true)
  {
    btnIsAbsentWarning("="); 
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnResult.ClickButton();
  }
}
//------------------------------------------------------------------------------
function resetOperationClick()
{
  if(Aliases.Sys.calc.wndCalculator.btnReset.Exists!=true)
  {
    btnIsAbsentWarning("Reset");  
  }
  else
  {
    Aliases.Sys.calc.wndCalculator.btnReset.ClickButton();
  }
}
//------------------------------------------------------------------------------
function getResultValue()
{
  var strEdBoxResultValue=Aliases.Sys.calc.wndCalculator.edBoxResult.WndCaption;
  if(strEdBoxResultValue==null)
  {
    Log.Warning("'Result' editbox contains invalid data. Results could be incorrect"); 
  }
  /* 'strEdBoxResultValue' is formally declared as String due to results could be   
  not Numerical (e.g. case with zero divide) */
  return strEdBoxResultValue;
}






