;;; tabo.el --- Generic completion and narrowing mechanism  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Shen, Jen-Chieh
;; Created date 2020-09-15 20:24:10

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Description: Generic completion and narrowing mechanism.
;; Keyword: matching
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.3"))
;; URL: https://github.com/jcs-elpa/tabo

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Generic completion and narrowing mechanism.
;;

;;; Code:

(require 'cl-lib)
(require 'f)

(require 'tabulated-list)

(defgroup tabo nil
  "Generic completion and narrowing mechanism."
  :prefix "tabo-"
  :group 'convenience
  :link '(url-link :tag "Repository" "https://github.com/jcs-elpa/tabo"))

(defconst tabo--buffer-name "*tabo*"
  "Buffer name for displays.")

(defvar tabo-text ""
  "Hold minibuffer input.")

(defvar tabo--candidates '()
  "")

(defun tabo-completion-in-region (start end collection &optional predicate)
  "An Tabo function suitable for `completion-in-region-function'."
  )

;;;###autoload
(defun tabo-completing-read (prompt collection
                                    &optional predicate require-match initial-input
                                    history def inherit-input-method)
  "Read a string in the minibuffer, with completion."
  )

(define-minor-mode tabo-mode
  "Toggle Tabo mode on or off."
  :group 'tabo
  :global t
  :keymap tabo-mode-map
  :lighter " tabo"
  (if tabo-mode
      (progn
        (setq completing-read-function 'tabo-completing-read)
        (setq completion-in-region-function 'tabo-completion-in-region))
    (setq completing-read-function 'completing-read-default)
    (setq completion-in-region-function 'completion--in-region)))

(cl-defun tabo-read (prompt collection
                            &key predicate action
                            keymap sort preselect
                            header)
  ""
  )

(provide 'tabo)
;;; tabo.el ends here
