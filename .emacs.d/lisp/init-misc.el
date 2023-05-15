;;; -*- lexical-binding: t -*-

(setopt user-full-name "Jack Lee"
        user-mail-address "liangjlee@google.com")

(use-package smtpmail
  :ensure nil
  :custom ((smtpmail-smtp-server "smtp.gmail.com")
           (smtpmail-smtp-service 587)))

(use-package sendmail
  :ensure nil
  :custom (send-mail-function 'smtpmail-send-it))

(use-package eww
  :ensure nil
  :custom ((eww-auto-rename-buffer 'title)
           (eww-buffer-name-length 20)))

(use-package shr
  :ensure nil
  :custom ((shr-use-fonts nil)
           (shr-discard-aria-hidden t)
           (shr-use-xwidgets-for-media t)))

(use-package notmuch
  :custom ((notmuch-search-oldest-first nil)
           (notmuch-column-control 0.25)
           (notmuch-show-empty-saved-searches t)
           (notmuch-saved-searches
            `((:name "inbox" :query "tag:inbox" :key ,(kbd "i"))
              (:name "unread" :query "tag:unread" :key ,(kbd "u"))
              (:name "sent" :query "tag:sent" :key ,(kbd "t"))
              (:name "drafts" :query "tag:draft" :key ,(kbd "d"))))
           (notmuch-hello-sections
            '(notmuch-hello-insert-header
              notmuch-hello-insert-search
              notmuch-hello-insert-saved-searches))))

(use-package keycast)

(use-package elfeed
  :custom ((elfeed-feeds '("https://www.reddit.com/r/emacs.rss"
                           "https://www.reddit.com/r/lisp.rss"
                           "https://lwn.net/headlines/rss"))
           (elfeed-search-filter "@3days-ago +unread")))

(provide 'init-misc)
