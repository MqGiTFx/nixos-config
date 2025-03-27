{ config, pkgs, lib, ... }:

let
  nvimRepo = pkgs.fetchFromGitHub {
    owner = "Dracovolodeus";
    repo = "DracoNvim";
    rev = "cb61c25bb421769bcdf950e598d6f456e4d13414";
    sha256 = "sha256-ITHReFmX/elO1i2MJuKuo/nHTUCQ7HZ6PPTRFDXLfVk=";
  };
in
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    withNodeJs = true;
    withPython3 = true;
  };

  home.file.".config/nvim" = {
    source = nvimRepo;
    recursive = true;
    onChange = ''
      echo "Обновление конфига NeoVim..."
      ${pkgs.neovim}/bin/nvim -c "Lazy sync" -c "qall"
    '';
  };

  home.activation.installLSP = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    NVIM_DIR="${config.home.homeDirectory}/.config/nvim"
    MASON_MARKER="$NVIM_DIR/.mason-installed"

    # Создаем директорию, если её нет
    mkdir -p "$NVIM_DIR"

    if [[ ! -e "$MASON_MARKER" ]] || \
       [[ "$(cat "$MASON_MARKER" 2>/dev/null)" != "${nvimRepo.rev}" ]]; then
      echo "Установка LSP-серверов через Mason..."
      if ${pkgs.neovim}/bin/nvim -c "MasonInstall pyright lua-language-server rust_analyzer rnix-lsp" -c "qall"; then
        echo "${nvimRepo.rev}" > "$MASON_MARKER"
        echo "LSP-серверы успешно установлены!"
      else
        echo "Ошибка при установке LSP-серверов" >&2
        exit 1
      fi
    else
      echo "LSP-серверы уже установлены (версия ${nvimRepo.rev})"
    fi
  '';

  home.packages = with pkgs; [
    git
    python313Full
    nodejs
    rustc
    cargo
  ];
}
