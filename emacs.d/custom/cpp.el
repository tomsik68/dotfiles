;; minor mode for easily runnig make
(define-minor-mode make-mode
  "Make compilation"
  nil
  " Make"
  `(
    (,(kbd "C-c c ") . (compile "make -k"))
    )
)

;; don't ask for compilation command!
;;(setq compilation-read-command nil)

;; open .h files in C++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; open .cu (CUDA) files in C++ mode
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))

(defun bury-compile-buffer-if-successful (buffer string)

  "Bury a compilation buffer if succeeded without warnings "
  (when (and
	 (buffer-live-p buffer)
	 (string-match "compilation" (buffer-name buffer))
	 (string-match "finished" string)
	 (not
	  (with-current-buffer buffer
	    (goto-char (point-min))
	    (search-forward "warning" nil t)))
    ) (run-with-timer 0.2 nil
		    (lambda (buf)
		      (bury-buffer buf)
		      (switch-to-prev-buffer (get-buffer-window buf) 'kill))
		    buffer)
    )
  )
;; (add-hook 'compilation-finish-functions 'bury-compile-buffer-if-successful)
