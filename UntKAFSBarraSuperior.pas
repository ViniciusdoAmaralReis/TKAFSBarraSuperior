unit UntKAFSBarraSuperior;

interface

uses
  System.Classes, System.SysUtils, System.UITypes,
  FMX.Graphics, FMX.Layouts, FMX.Types,
  UntKAFSBotao;

type
  TKAFSBarraSuperior = class(TLayout)
    BtnUsuario: TKAFSBotao;
    BtnOpcoes: TKAFSBotao;

    constructor Create(AOwner: TComponent); override;
    procedure KAFSBarraSuperiorConfig(const _cortema1, _cortema2: TAlphaColor; _imagemusuario: TBitmap; _btnusuario, _btnopcoes: TNotifyEvent);
    destructor Destroy; override;
  end;

implementation

uses
  UntKAFSJanelaLogin, UntKAFSJanelaOpcoes;

constructor TKAFSBarraSuperior.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  Align := TAlignLayout.MostTop;
  Height := 70;
  Margins.Bottom := -Height;
  Parent := TFmxObject(AOwner);

  BtnUsuario := TKAFSBotao.Create(Self);
  with BtnUsuario do
  begin
    Align := TAlignLayout.MostLeft;
    Width := Self.Height;
  end;

  BtnOpcoes := TKAFSBotao.Create(Self);
  with BtnOpcoes do
  begin
    Align := TAlignLayout.MostRight;
    LabDescricao.Text := '⚙';
    Width := Self.Height;
  end;
end;

procedure TKAFSBarraSuperior.KAFSBarraSuperiorConfig(const _cortema1, _cortema2: TAlphaColor; _imagemusuario: TBitmap; _btnusuario, _btnopcoes: TNotifyEvent);
begin
  // Atualiza componentes visuais
  TThread.Synchronize(nil, procedure
  begin
    with BtnUsuario do
    begin
      Fill.Color := _cortema2;
      ImgImagem.Bitmap := _imagemusuario;
      LabDescricao.FontColor := _cortema1;

      OnClick := _btnusuario;
    end;

    with BtnOpcoes do
    begin
      Fill.Color := _cortema2;
      LabDescricao.FontColor := _cortema1;

      OnClick := _btnopcoes;
    end;

    Visible := True;
  end);
end;

destructor TKAFSBarraSuperior.Destroy;
begin
  if Assigned(BtnOpcoes) then
    FreeAndNil(BtnOpcoes);

  if Assigned(BtnUsuario) then
    FreeAndNil(BtnUsuario);

  inherited Destroy;
end;

end.
