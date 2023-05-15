(in-package :stumpwm)

(require :slynk)
(slynk:create-server :port 4004 :dont-close t)

(set-font "-misc-fixed-medium-r-*--16-*-*-*-*-*-*-*")

(setf *input-window-gravity* :top
      *message-window-gravity* :top
      *message-window-input-gravity* :top-right
      *window-border-style* :thin
      *maxsize-border-width* 8
      *normal-border-width* 8
      *transient-border-width* 8
      *message-window-padding* 4)

(setf *input-completion-style* (make-input-completion-style-unambiguous))

(setf *mouse-focus-policy* :click)
(setf *float-window-modifier* :super)

(setf *shell-program* "/usr/bin/bash")

(set-prefix-key (kbd "s-x"))
(define-key *root-map* (kbd "0") "remove-split")
(define-key *root-map* (kbd "1") "only")
(define-key *root-map* (kbd "2") "vsplit")
(define-key *root-map* (kbd "3") "hsplit")
(define-key *root-map* (kbd "o") "fnext")
(define-key *root-map* (kbd "O") "fprev")
(define-key *root-map* (kbd "b") "pull-from-windowlist")
(define-key *root-map* (kbd "k") "delete")
(define-key *root-map* (kbd "^") "iresize")
(define-key *root-map* (kbd "Left") "prev")
(define-key *root-map* (kbd "Right") "next")
(define-key *root-map* (kbd "s-c") "quit-confirm")
(define-key *root-map* (kbd "s-z") "exec systemctl suspend")
(define-key *root-map* (kbd ";") "colon")
(define-key *root-map* (kbd ":") "eval")
(define-key *root-map* (kbd "!") "exec")

(define-key *root-map* (kbd "t") '*groups-map*)
(define-key *groups-map* (kbd "0") "gkill")
(define-key *groups-map* (kbd "1") "gkill-other")
(define-key *groups-map* (kbd "2") "gnew")
(define-key *groups-map* (kbd "o") "gother")
(define-key *groups-map* (kbd "r") "grename")
(define-key *groups-map* (kbd "RET") "grouplist")

(define-key *top-map* (kbd "s-h") '*help-map*)
(define-key *help-map* (kbd "v") "describe-variable")
(define-key *help-map* (kbd "f") "describe-function")
(define-key *help-map* (kbd "k") "describe-key")
(define-key *help-map* (kbd "b") "where-is")
(define-key *help-map* (kbd "x") "describe-command")

(define-key *top-map* (kbd "s-Up") "move-focus up")
(define-key *top-map* (kbd "s-Down") "move-focus down")
(define-key *top-map* (kbd "s-Left") "move-focus left")
(define-key *top-map* (kbd "s-Right") "move-focus right")

(define-key *top-map* (kbd "s-S-Up") "exchange-direction up")
(define-key *top-map* (kbd "s-S-Down") "exchange-direction down")
(define-key *top-map* (kbd "s-S-Left") "exchange-direction left")
(define-key *top-map* (kbd "s-S-Right") "exchange-direction right")

(define-key *top-map* (kbd "s-1") "gselect 1")
(define-key *top-map* (kbd "s-2") "gselect 2")
(define-key *top-map* (kbd "s-3") "gselect 3")
(define-key *top-map* (kbd "s-4") "gselect 4")
(define-key *top-map* (kbd "s-5") "gselect 5")
(define-key *top-map* (kbd "s-6") "gselect 6")
(define-key *top-map* (kbd "s-7") "gselect 7")
(define-key *top-map* (kbd "s-8") "gselect 8")
(define-key *top-map* (kbd "s-9") "gselect 9")

(define-key *top-map* (kbd "s-!") "gmove 1")
(define-key *top-map* (kbd "s-@") "gmove 2")
(define-key *top-map* (kbd "s-#") "gmove 3")
(define-key *top-map* (kbd "s-$") "gmove 4")
(define-key *top-map* (kbd "s-%") "gmove 5")
(define-key *top-map* (kbd "s-^") "gmove 6")
(define-key *top-map* (kbd "s-&") "gmove 7")
(define-key *top-map* (kbd "s-*") "gmove 8")
(define-key *top-map* (kbd "s-(") "gmove 9")

;; (define-key *top-map* (kbd "s-s") "exec rofi -show-icons combi-modi window,run,drun -font \"hack 16\" -show combi")
(define-key *top-map* (kbd "s-s") "exec")
(define-key *top-map* (kbd "s-;") "colon")
(define-key *top-map* (kbd "s-:") "eval")
(define-key *top-map* (kbd "s-w") "exec jumpapp google-chrome")
(define-key *top-map* (kbd "s-t") "exec jumpapp alacritty")
(define-key *top-map* (kbd "s-e") "exec jumpapp emacs")
(define-key *top-map* (kbd "s-f") "exec jumpapp thunar")
(define-key *top-map* (kbd "s-c") "exec jumpapp telegram-desktop")

(define-key *top-map* (kbd "s-.") "exec xfce4-screenshooter")
(define-key *top-map* (kbd "s-RET") "exec alacritty")
(define-key *top-map* (kbd "s-j") "fnext")
(define-key *top-map* (kbd "s-k") "fprev")

(run-shell-command "xset r rate 200 70")
(run-shell-command "xrandr --output DP-3 --primary --mode 1920x1080 --output eDP-1 --off")
(run-shell-command "xsetroot -cursor_name left_ptr")
(run-shell-command "xinput --set-prop \"ELAN0672:00 04F3:3187 Touchpad\" \"libinput Natural Scrolling Enabled\" 1")
(run-shell-command "xinput --set-prop \"ELAN0672:00 04F3:3187 Touchpad\" \"libinput Accel Speed\" 0.65")
(run-shell-command "picom")
(run-shell-command "feh --bg-scale ~/Pictures/wallpapers/jiyeon.jpg")
(run-shell-command "xinput --set-prop \"ELAN0672:00 04F3:3187 Touchpad\" \"libinput Tapping Enabled\" 1")
(load-module "battery-portable")
(load-module "pamixer")
(load-module "net")
(load-module "globalwindows")
(load-module "shell-command-history")
(load-module "winner-mode")

(setf pamixer:*step* 2)
(define-key *top-map* (kbd "s-F1") "pamixer-toggle-mute")
(define-key *top-map* (kbd "s-F2") "pamixer-volume-down")
(define-key *top-map* (kbd "s-F3") "pamixer-volume-up")

(add-hook *post-command-hook*
          (lambda (command)
            (when (member command winner-mode:*default-commands*)
              (winner-mode:dump-group-to-file))))

(define-key *root-map* (kbd "s-Left") "winner-undo")
(define-key *root-map* (kbd "s-Right") "winner-redo")

(setf *mode-line-timeout* 2
      *mode-line-border-width* 1
      *time-modeline-string* "%a %b %e %k:%M"
      *screen-mode-line-format* (list "[%n] %W ^> %l %P [%B] [%d]"))

(restore-from-file "~/.stumpwm.d/desktop.dump")
