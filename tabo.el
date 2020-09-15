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

(defgroup tabo nil
  "Generic completion and narrowing mechanism."
  :group 'convenience)

(provide 'tabo)
;;; tabo.el ends here
