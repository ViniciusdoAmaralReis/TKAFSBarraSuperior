unit uKAFSBarraSuperior;

interface

uses
  System.Classes, System.UITypes,
  FMX.Graphics, FMX.Objects, FMX.Types,
  uKAFSBotao;

type
  TKAFSBarraSuperior = class(TRectangle)
    btnUsuario: TKAFSBotao;
    btnOpcoes: TKAFSBotao;

    constructor Create(AOwner: TComponent); reintroduce;
    procedure KAFSBarraSuperiorConfig(const _cortema1, _cortema2: TAlphaColor; const _imgUsuario, _imgConfig: TBitmap; const _btnUsuario, _btnOpcoes: TNotifyEvent);
    destructor Destroy; override;
  end;

implementation

uses
  uKAFSJanelaLogin, uKAFSJanelaOpcoes;

constructor TKAFSBarraSuperior.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  Self.Align := TAlignLayout.MostTop;
  Self.Corners := [TCorner.BottomLeft, TCorner.BottomRight];
  Self.Height := 50;
  Self.Margins.Bottom := -Height;
  Self.Parent := TFmxObject(AOwner);
  Self.Stroke.Kind := TBrushKind.None;
  Self.Visible := False;
  Self.XRadius := 25;
  Self.YRadius := 25;

  btnUsuario := TKAFSBotao.Create(Self);
  btnUsuario.Align := TAlignLayout.MostLeft;
  btnUsuario.Fill.Color := TAlphaColors.White;
  btnUsuario.Height := 100;
  btnUsuario.imgImagem.Margins.Bottom := 20;
  btnUsuario.imgImagem.Margins.Left := 20;
  btnUsuario.imgImagem.Margins.Right := 20;
  btnUsuario.imgImagem.Margins.Top := 20;
  btnUsuario.Margins.Bottom := -60;
  btnUsuario.Margins.Left := 25;
  btnUsuario.Margins.Top := 10;
  btnUsuario.Stroke.Color := TAlphaColors.Null;
  btnUsuario.Stroke.Kind := TBrushKind.Solid;
  btnUsuario.Stroke.Thickness := 10;
  btnUsuario.Width := 100;
  btnUsuario.XRadius := 25;
  btnUsuario.YRadius := 25;

  btnOpcoes := TKAFSBotao.Create(Self);
  btnOpcoes.Align := TAlignLayout.MostRight;
  btnOpcoes.Fill.Color := TAlphaColors.White;
  btnOpcoes.Height := 100;
  btnOpcoes.imgImagem.Margins.Bottom := 20;
  btnOpcoes.imgImagem.Margins.Left := 20;
  btnOpcoes.imgImagem.Margins.Right := 20;
  btnOpcoes.imgImagem.Margins.Top := 20;
  btnOpcoes.Margins.Bottom := -60;
  btnOpcoes.Margins.Right := 25;
  btnOpcoes.Margins.Top := 10;
  btnOpcoes.Stroke.Color := TAlphaColors.Null;
  btnOpcoes.Stroke.Kind := TBrushKind.Solid;
  btnOpcoes.Stroke.Thickness := 10;
  btnOpcoes.Width := 100;
  btnOpcoes.XRadius := 25;
  btnOpcoes.YRadius := 25;
end;

procedure TKAFSBarraSuperior.KAFSBarraSuperiorConfig(const _cortema1, _cortema2: TAlphaColor; const _imgUsuario, _imgConfig: TBitmap; const _btnUsuario, _btnOpcoes: TNotifyEvent);
begin
  TThread.Synchronize(nil, procedure
  begin
    Self.Fill.Color := _cortema2;

    btnUsuario.btnBotao.OnClick := _btnUsuario;
    btnUsuario.imgImagem.Bitmap := _imgUsuario;

    btnOpcoes.btnBotao.OnClick := _btnopcoes;
    btnOpcoes.imgImagem.Bitmap := _imgConfig;

    Self.Visible := True;
  end);
end;

destructor TKAFSBarraSuperior.Destroy;
begin

  inherited Destroy;
end;

end.
