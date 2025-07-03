#!/usr/bin/env bash

# Defina onde instalar o oh-my-posh
INSTALL_DIR="$HOME/.oh-my-posh"

# Cria pasta de instalação se não existir
mkdir -p "$INSTALL_DIR"

echo "🔹 Instalando oh-my-posh..."
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d "$INSTALL_DIR"

# Adiciona o diretório ao PATH
export PATH="$PATH:$INSTALL_DIR"

# Cria cache local de temas
THEMES_DIR="$HOME/.cache/oh-my-posh/themes"
mkdir -p "$THEMES_DIR"

echo "🔹 Baixando temas padrão..."
oh-my-posh get themes --destination "$THEMES_DIR"

# Instalar fontes recomendadas
echo "🔹 Instalando fontes..."

FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

# Função para baixar e instalar uma fonte Nerd Font
instala_fonte() {
    NOME_FONTE="$1"
    echo "  ➜ Baixando $NOME_FONTE Nerd Font..."
    wget -q --show-progress -O "$FONT_DIR/$NOME_FONTE.zip" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$NOME_FONTE.zip"
    unzip -o "$FONT_DIR/$NOME_FONTE.zip" -d "$FONT_DIR/$NOME_FONTE/"
    rm "$FONT_DIR/$NOME_FONTE.zip"
}

# Instalação das fontes desejadas
instala_fonte "CascadiaCode"
instala_fonte "Arimo"
instala_fonte "DroidSansMono"
instala_fonte "3270"

# Atualizar cache de fontes
fc-cache -fv

echo ""
echo "✅ Fontes instaladas em: $FONT_DIR"
echo ""
echo "Para usar o oh-my-posh, adicione ao seu .bashrc ou .zshrc:"
echo ""
echo "eval \"\$(oh-my-posh init bash --config \$HOME/.cache/oh-my-posh/themes/jandedobbeleer.omp.json)\""
