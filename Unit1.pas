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
  Vcl.StdCtrls, Vcl.Mask,DateUtils,RegularExpressions, Vcl.Menus;

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
    PopupMenu1: TPopupMenu;
    importtableleft1: TMenuItem;
    importtableleft2: TMenuItem;
    CheckBox1: TCheckBox;
    procedure LabeledEdit1Change(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure importtableleft1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure importtableleft2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
var
  st:string;
begin
      st:=FDQuery2.SQL.Text;
      if form1.CheckBox1.Checked then
        Insert('-- ', st,pos('and',st))
      else
        delete(st,pos('and',st)-3,3)  ;

      FDQuery2.Close;
      FDQuery2.SQL.Text:=st;
      FDQuery2.open;

end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
    if not form1.CheckBox1.Checked then
      begin
        Form1.FDQuery2.Close;
        Form1.FDQuery2.Params[0].Value:=Form1.FDQuery1.Fields[3].AsInteger;
        Form1.FDQuery2.Open();
      end;
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

procedure TForm1.importtableleft1Click(Sender: TObject);
var
  s:string;
  st:TStringList;
  i:integer;
  RegEx: TRegEx;
begin
   st:=TStringList.Create;
   RegEx:=TRegEx.Create('\r\n');
   st.append('Название фирмы;Юр.Адрес;Почт.адр.');
  with FDQuery1 do begin
    first;
    while not eof do begin
      s:='';
      for i:=0 to 2 do
        s:=s+Fields[i].AsString+';';
      st.append(RegEx.Replace(s,''));
      next;
    end;

  end;
  st.savetofile('file1.csv');
  st.free;
end;

procedure TForm1.importtableleft2Click(Sender: TObject);
var
  s:string;
  st:TStringList;
  i:integer;
  RegEx: TRegEx;
begin
   st:=TStringList.Create;
   RegEx:=TRegEx.Create('\r\n');
   st.append('Год;Январь;Февраль;Март;Апрель;Май;Июнь;Июль;Август;Сентябрь;Октябрь;Ноябрь;Декабрь');
  with FDQuery2 do begin
    first;
    while not eof do begin
      s:='';
      for i:=0 to 12 do
        s:=s+Fields[i].AsString+';';
      st.append(RegEx.Replace(s,''));
      next;
    end;

  end;
  st.savetofile('file2.csv');
  st.free;

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
