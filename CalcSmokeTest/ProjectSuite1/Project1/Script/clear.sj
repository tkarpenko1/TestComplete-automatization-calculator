function Main()
{
    resetOperationClick();
    MCOperationClick();
}
//---------------------------------------------------------------------------------------
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
//----------------------------------------------------------------------------------------
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