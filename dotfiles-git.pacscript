pkgname="dotfiles-git"
arch=("amd64" "arm64")
pkgver="1.0.0"
source("https://github.com/ajstrongdev/dotfiles.git")
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
	cp -r "dotfiles/sway" "${pkgdir}/etc/skel/.config"
	cp -r "dotfiles/rofi" "${pkgdir}/etc/skel/.config"
	cp -r "dotfiles/alacritty" "${pkgdir}/etc/skel/.config"
	cp -r "dotfiles/nvim" "${pkgdir}/etc/skel/.config"
	cp -r "dotfiles/swaylock" "${pkgdir}/etc/skel/.config"
	cp -r "dotfiles/swaync" "${pkgdir}/etc/skel/.config"
	cp -r "dotfiles/waybar" "${pkgdir}/etc/skel/.config"
 }

post_install() {
	cp -r "dotfiles/sway" "${homedir}/.config"
	cp -r "dotfiles/rofi" "${homedir}/.config"
	cp -r "dotfiles/alacritty" "${homedir}/.config"
	cp -r "dotfiles/nvim" "${homedir}/.config"
	cp -r "dotfiles/swaylock" "${homedir}/.config"
	cp -r "dotfiles/swaync" "${homedir}/.config"
	cp -r "dotfiles/waybar" "${homedir}/.config"
}
