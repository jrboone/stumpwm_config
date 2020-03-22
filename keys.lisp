(in-package :stumpwm)

(define-key *root-map* (kbd "c")    "ren/run-terminal")
(define-key *root-map* (kbd "C-w")  "ren/run-browser")
(define-key *root-map* (kbd "Q")    "quit")
(define-key *root-map* (kbd "M-r")  "reinit")
(define-key *root-map* (kbd "b")    "mode-line")
(define-key *root-map* (kbd "C-p")  "dmenu")
(define-key *root-map* (kbd "M-S")  "screen-blank")

(defcommand dmenu () () 
            (run-shell-command "dmenu_run"))
(defcommand reinit () ()
            (run-commands "reload" "loadrc"))
(defcommand screen-blank () ()
            (run-shell-command "xset dpms force off"))
