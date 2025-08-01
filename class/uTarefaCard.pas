unit uTarefaCard;

interface

uses
  System.Classes, FMX.Objects, FMX.Controls, FMX.StdCtrls, FMX.Layouts, System.UITypes, FMX.Types, System.SysUtils;

type
  TTarefaCard = class
  private
    FCard: TRectangle;
    FLabelTitulo: TLabel;
    FLabelDescricao: TLabel;
    FLabelDataLimite: TLabel;
    FRadioConcluido: TCheckBox;
    FFaixaPrioridade: TRectangle;
  public
    constructor Create(AOwner: TControl; const Titulo, Descricao: string; Prioridade: TAlphaColor; DataLimite: TDateTime);
    property Card: TRectangle read FCard;
  end;

implementation

constructor TTarefaCard.Create(AOwner: TControl; const Titulo, Descricao: string; Prioridade: TAlphaColor; DataLimite: TDateTime);
begin

  // Card_Fundo
  FCard := TRectangle.Create(AOwner);
  FCard.Parent := AOwner;
  FCard.Width := 350;
  FCard.Height := 70;
  FCard.Fill.Color := $FF1E1E1E;
  FCard.XRadius := 10;
  FCard.YRadius := 10;
  FCard.Margins.Bottom := 10;


  //Faixa de prioridade
  FFaixaPrioridade := TRectangle.Create(FCard);
  FFaixaPrioridade.Parent := FCard;
  FFaixaPrioridade.Align := TAlignLayout.Left;
  FFaixaPrioridade.Width := 10;
  FFaixaPrioridade.Fill.Color := Prioridade;

  // CheckBox
  FRadioConcluido := TCheckBox.Create(FCard);
  FRadioConcluido.Parent := FCard;
  FRadioConcluido.Position.X := FCard.Width - 30;
  FRadioConcluido.Position.Y := FCard.Height / 2 - FRadioConcluido.Height / 2;

  // T�tulo
  FLabelTitulo := TLabel.Create(FCard);
  FLabelTitulo.StyledSettings := FLabelTitulo.StyledSettings - [TStyledSetting.Size] - [TStyledSetting.FontColor];
  FLabelTitulo.Parent := FCard;
  FLabelTitulo.Position.X := 20;
  FLabelTitulo.Position.Y := 2;
  FLabelTitulo.Width := FCard.Width - 60;
  FLabelTitulo.Text := Titulo;
  FLabelTitulo.TextSettings.Font.Style := [TFontStyle.fsBold];
  FLabelTitulo.TextSettings.Font.Size := 14;
  FLabelTitulo.TextSettings.FontColor := TAlphaColorRec.White;

  // Descri��o
  FLabelDescricao := TLabel.Create(FCard);
  FLabelDescricao.StyledSettings := FLabelDescricao.StyledSettings - [TStyledSetting.Size] - [TStyledSetting.FontColor];
  FLabelDescricao.Parent := FCard;
  FLabelDescricao.Position.X := 20;
  FLabelDescricao.Position.Y := 15;
  FLabelDescricao.Width := FCard.Width - 60;
  FLabelDescricao.Height := 50;
  FLabelDescricao.Text := Descricao;
  FLabelDescricao.WordWrap := True;
  FLabelDescricao.AutoSize := False;
  FLabelDescricao.TextSettings.Font.Size := 10;
  FLabelDescricao.TextSettings.FontColor := TalphaColorRec.Lightgrey;

  // Data Limite
  FLabelDataLimite := TLabel.Create(FCard);
  FLabelDataLimite.StyledSettings := FLabelDataLimite.StyledSettings - [TStyledSetting.Size] - [TStyledSetting.FontColor];
  FLabelDataLimite.Parent := FCard;
  FLabelDataLimite.Position.X := 20;
  FLabelDataLimite.Position.Y := FCard.Height - 20;
  FLabelDataLimite.Width := FCard.Width - 60;
  FLabelDataLimite.Text := 'Data limite: ' + FormatDateTime('dd/mm/yyyy', DataLimite);
  FLabelDataLimite.TextSettings.Font.Size := 10;
  FLabelDataLimite.TextSettings.FontColor := TAlphaColorRec.Silver;


end;

end.
