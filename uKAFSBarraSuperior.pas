unit uKAFSBarraSuperior;

interface

uses
  System.Classes, System.SysUtils, System.UITypes,
  FMX.Graphics, FMX.Layouts, FMX.Types,
  uKAFSBotao;

type
  TKAFSBarraSuperior = class(TLayout)
    btnUsuario: TKAFSBotao;
    btnOpcoes: TKAFSBotao;

    constructor Create(AOwner: TComponent); reintroduce;
    procedure KAFSBarraSuperiorConfig(const _cortema1, _cortema2: TAlphaColor; _imagemusuario: TBitmap; _btnusuario, _btnopcoes: TNotifyEvent);
    destructor Destroy; override;
  end;

implementation

uses
  uKAFSJanelaLogin, uKAFSJanelaOpcoes;

constructor TKAFSBarraSuperior.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  Align := TAlignLayout.MostTop;
  Height := 70;
  Margins.Bottom := -Height;
  Parent := TFmxObject(AOwner);

  btnUsuario := TKAFSBotao.Create(Self);
  with btnUsuario do
  begin
    Align := TAlignLayout.MostLeft;
    Width := Self.Height;
  end;

  btnOpcoes := TKAFSBotao.Create(Self);
  with btnOpcoes do
  begin
    Align := TAlignLayout.MostRight;
    LabDescricao.Text := '🔧';
    Width := Self.Height;
  end;
end;

procedure TKAFSBarraSuperior.KAFSBarraSuperiorConfig(const _cortema1, _cortema2: TAlphaColor; _imagemusuario: TBitmap; _btnusuario, _btnopcoes: TNotifyEvent);
begin
  // Atualiza componentes visuais
  TThread.Synchronize(nil, procedure
  begin
    with btnUsuario do
    begin
      Fill.Color := _cortema2;
      imgImagem.Bitmap := _imagemusuario;
      labDescricao.FontColor := _cortema1;

      btnBotao.OnClick := _btnusuario;
    end;

    with btnOpcoes do
    begin
      Fill.Color := _cortema2;
      labDescricao.FontColor := _cortema1;

      btnBotao.OnClick := _btnopcoes;
    end;

    Visible := True;
  end);
end;

destructor TKAFSBarraSuperior.Destroy;
begin

  inherited Destroy;
end;

end.
