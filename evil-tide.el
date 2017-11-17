;;; evil-tide.el --- Bindings for `tide-mode'. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, tide, typescript, languages

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Bindings for `tide-mode'.

;;; Code:
(require 'tide nil t)
(require 'evil)

(defun evil-tide-setup ()
  "Set up `evil' bindings for `tide'."
  (evil-define-key 'normal tide-mode-map
    (kbd "gd") #'tide-jump-to-definition
    (kbd "C-t") #'tide-jump-back
    (kbd "K") #'tide-documentation-at-point)

  (evil-define-key 'normal tide-references-mode-map
    "gj" #'tide-find-next-reference
    "gk" #'tide-find-previous-reference
    (kbd "C-j") #'tide-find-next-reference
    (kbd "C-k") #'tide-find-previous-reference
    (kbd "C-m") #'tide-goto-reference
    (kbd "RET") #'tide-goto-reference
    (kbd "q") #'quit-window)

  (evil-define-key 'normal tide-project-errors-mode-map
    "gj" #'tide-find-next-error
    "gk" #'tide-find-previous-error
    (kbd "C-j") #'tide-find-next-error
    (kbd "C-k") #'tide-find-previous-error
    (kbd "C-m") #'tide-goto-error
    (kbd "RET") #'tide-goto-error
    (kbd "q") #'quit-window))

(provide 'evil-tide)
;;; evil-tide.el ends here
