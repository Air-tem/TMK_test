unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.DBCtrls, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask,DateUtils;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    FDQuery2: TFDQuery;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    OpenDialog1: TOpenDialog;
    procedure LabeledEdit1Change(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
      Form1.FDQuery2.Close;
     Form1.FDQuery2.Params[0].Value:=Form1.FDQuery1.Fields[3].AsInteger;
     Form1.FDQuery2.Open();
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  fileName:string;
  buttonSelected : Integer;
  openDialog : TOpenDialog;
begin
   fileName:=GetCurrentDir+'\libmysql.dll';
   while not FileExists(fileName) do
    Begin
       buttonSelected:=MessageDlg('Не найдена библиотека libmySQL.dll. Желаете указать директорию библиотеки? ',mtConfirmation , mbOKCancel, 0);
       if buttonSelected = mrCancel then
          begin
            Application.Terminate;
            Exit;
          end;
        openDialog := TOpenDialog.Create(self);
        openDialog.InitialDir := GetCurrentDir;
        openDialog.Filter :='libmysql.dll' ;
        if openDialog.Execute then
           CopyFile(PChar(openDialog.FileName), PChar(GetCurrentDir+'\libmysql.dll'), false);
        openDialog.Free;
    End;
    form1.FDPhysMySQLDriverLink1.VendorLib:= fileName;
    FDConnection1.Connected:=true;
    FDQuery1.Open;

end;

procedure TForm1.LabeledEdit1Change(Sender: TObject);
var
  str:string;
begin
     Form1.FDQuery1.Close;

        Form1.FDQuery1.Params.ParamByName('NAME').Value:=LabeledEdit1.text+'%';
        Form1.FDQuery1.Params.ParamByName('CITY_J').Value:=LabeledEdit2.text+'%';
        Form1.FDQuery1.Params.ParamByName('CITY_P').Value:=LabeledEdit3.text+'%';

     Form1.FDQuery1.Open();


end;

end.
