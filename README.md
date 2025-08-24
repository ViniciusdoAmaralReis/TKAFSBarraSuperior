# 🚀 TKAFSBarraSuperior

Componente Delphi/FireMonkey para criação de barras superiores personalizáveis em aplicações multiplataforma.

## 📋 Descrição

Componente especializado em criar barras superiores (header/toolbar) em aplicações Delphi/FireMonkey, com botões configuráveis e suporte a personalização visual completa.

## ✨ Características

- ✅ Layout responsivo adaptado para diferentes plataformas
- ✅ Botões lateralizados (esquerda e direita)
- ✅ Suporte a imagens personalizadas no botão de usuário
- ✅ Cores totalmente personalizáveis
- ✅ Integração com componente TKAFSBotao
- ✅ Alinhamento automático no topo da tela

## 🛠️ Configuração

### Parâmetros Padrão

```
Altura fixa: 70px
Alinhamento: Topo da tela
Botão esquerdo: Ícone de usuário personalizável
Botão direito: Ícone de engrenagem (⚙)
```

## 📦 Como Usar

### Instanciação Básica

```pascal
var
  BarraSuperior: TKAFSBarraSuperior;
begin
  BarraSuperior := TKAFSBarraSuperior.Create(Self);
  try
    BarraSuperior.KAFSBarraSuperiorConfig(
      TAlphaColors.White,        // Cor do texto
      TAlphaColors.Blue,         // Cor de fundo dos botões
      ImagemUsuario,             // Bitmap do usuário
      procedure(Sender: TObject) // Evento botão usuário
      begin
        // Sua lógica aqui
      end,
      procedure(Sender: TObject) // Evento botão opções
      begin
        // Sua lógica aqui
      end
    );
  finally
    BarraSuperior.Free;
  end;
end;
```

### Métodos Principais

| Método | Descrição |
|--------|-----------|
| `Create` | Construtor com criação dos componentes visuais |
| `KAFSBarraSuperiorConfig` | Configura a aparência e comportamento da barra superior |
| `Destroy` | Destrutor com limpeza adequada dos recursos |

### Parâmetros do Método KAFSBarraSuperiorConfig

```pascal
procedure KAFSBarraSuperiorConfig(
  const _cortema1: TAlphaColor;      // Cor do texto
  const _cortema2: TAlphaColor;      // Cor de fundo dos botões
  _imagemusuario: TBitmap;           // Imagem do botão de usuário
  _btnusuario: TNotifyEvent;         // Evento do botão usuário
  _btnopcoes: TNotifyEvent           // Evento do botão opções
);
```

## 🔧 Dependências

- `System.Classes`
- `System.SysUtils`
- `System.UITypes`
- `FMX.Graphics`
- `FMX.Layouts`
- `FMX.Types`
- `UntKAFSBotao` (componente personalizado de botão)
- `UntKAFSJanelaLogin` (opcional - para integração)
- `UntKAFSJanelaOpcoes` (opcional - para integração)

## 🎨 Personalização

### Cores
- Cor do texto dos botões (`_cortema1`)
- Cor de fundo dos botões (`_cortema2`)

### Elementos Visuais
- Imagem do botão de usuário personalizável
- Ícone fixo de engrenagem no botão de opções
- Tamanho dos botões proporcional à altura da barra

### Layout
- Barra fixa no topo da tela
- Botão usuário alinhado à esquerda
- Botão opções alinhado à direita
- Altura fixa de 70px com margem negativa inferior

## ⚠️ Comportamento

- **Thread Safety**: Configuração visual executada na thread principal
- **Gerenciamento de Memória**: Destrutor realiza limpeza adequada dos componentes filhos
- **Visibilidade**: Componente fica visível após configuração completa

## 🎯 Funcionalidades

- Exibe botão de usuário com imagem personalizável
- Botão de opções com ícone padrão de engrenagem
- Interface visualmente consistente entre plataformas
- Eventos de clique configuráveis para ambos os botões
- Layout adaptativo para diferentes tamanhos de tela

---

**Nota:** Este componente é ideal para criação de headers/barras de aplicativo com ações rápidas de usuário e configurações, proporcionando uma experiência de usuário consistente e profissional.
