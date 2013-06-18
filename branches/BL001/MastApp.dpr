
//---------------------------------------------------------------------------

// This software is Copyright (c) 2011 Embarcadero Technologies, Inc. 
// You may only use this software if you are an authorized licensee
// of Delphi, C++Builder or RAD Studio (Embarcadero Products).
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------
program MastApp;

uses
  Vcl.Forms,
  DataMod in 'DataMod\DataMod.pas' {MastData: TDataModule},
  About in 'About\About.pas' {AboutBox},
  BrCstOrd in 'BrCstOrd\BrCstOrd.pas' {BrCustOrdForm},
  Brparts in 'BrParts\Brparts.pas' {BrPartsForm},
  Edcust in 'EdCust\Edcust.pas' {EdCustForm},
  EDOrders in 'EdOrders\EDOrders.pas' {EdOrderForm},
  Edparts in 'EdParts\Edparts.pas' {EdPartsForm},
  Main in 'Main\Main.pas' {MainForm},
  Pickdate in 'PickDate\Pickdate.pas' {BrDateForm},
  PickInvc in 'PickInvc\PickInvc.pas' {PickOrderNoDlg},
  Pickrep in 'PickRep\Pickrep.pas' {PickRpt},
  QryCust in 'QryCust\QryCust.pas' {QueryCustDlg},
  Splash in 'Splash\Splash.pas' {SplashForm},
  SrchDlg in 'SrchDlg\SrchDlg.pas' {SearchDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  Application.Title := 'Marine Adventures Order Entry';
  Application.HelpFile := 'C:\views\scMastApp\mastapp.hlp';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TMastData, MastData);
  Application.CreateForm(TBrCustOrdForm, BrCustOrdForm);
  Application.CreateForm(TBrPartsForm, BrPartsForm);
  Application.CreateForm(TEdCustForm, EdCustForm);
  Application.CreateForm(TEdOrderForm, EdOrderForm);
  Application.CreateForm(TEdPartsForm, EdPartsForm);
  Application.CreateForm(TBrDateForm, BrDateForm);
  Application.CreateForm(TPickOrderNoDlg, PickOrderNoDlg);
  Application.CreateForm(TPickRpt, PickRpt);
  Application.CreateForm(TQueryCustDlg, QueryCustDlg);
  Application.CreateForm(TSearchDlg, SearchDlg);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
