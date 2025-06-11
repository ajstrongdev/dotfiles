pkgname="dotfiles-git"
arch=("amd64" "arm64")
pkgver="1.0.0"
source=("https://github.com/ajstrongdev/dotfiles.git")
depends=(
	"sway" "sway-backgrounds" "sway-notification-center" "swaybg" "swayidle" "swaylock" "rofi" "waybar" "grimshot" "thunar"
)
pacdeps=("rhino-ubxi-core" "neovim" "alacritty")
replaces=("unicorn-desktop" "unicorn-mobile")
gives="dotfiles"
priority='required'
pkgdesc="AJStrong's dotfiles"
maintainer=("ajstrong <ajstrongdev@proton.me>")
compatible=('ubuntu:*')
license=('GPL-3.0-or-later')

prepare() {
	mkdir -p "${pkgdir}/etc/skel/.config"
}

package() {
	local configs=("sway" "rofi" "alacritty" "nvim" "swaylock" "swaync" "waybar")
	for i in "${configs}"; do
		cp -r "dotfiles/$i" "${pkgdir}/etc/skel/.config"
	done
}

post_install() {
	local configs=("sway" "rofi" "alacritty" "nvim" "swaylock" "swaync" "waybar")
	for i in "${configs}"; do
		cp -r "/etc/skel/.config/$i" "${homedir}/.config"
	done
}
