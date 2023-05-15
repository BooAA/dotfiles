;;; -*- lexical-binding: t; -*-

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars . nil) default-frame-alist)

(push '(undecorated . t) default-frame-alist)
(push '(left-fringe . 2) default-frame-alist)
(push '(right-fringe . 2) default-frame-alist)

(push '(fullscreen . maximized) initial-frame-alist)

(set-face-attribute 'default nil
                    :family "hack"
                    :height (let ((w (display-pixel-width))
                                  (h (display-pixel-height)))
                              (cond ((and (= w 3840) (= h 2400)) 240)
                                    ((and (= w 3840) (= h 2160)) 240)
                                    ((and (= w 2560) (= h 1600)) 160)
                                    ((and (= w 2560) (= h 1400)) 160)
                                    ((and (= w 1920) (= h 1200)) 120)
                                    ((and (= w 1920) (= h 1080)) 120)
                                    (t 120)))
                    :weight 'normal
                    :width 'normal)

(setopt gc-cons-threshold most-positive-fixnum)

(provide 'early-init)
