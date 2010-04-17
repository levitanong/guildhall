(import (except (rnrs) delete-file file-exists?)
        (srfi :8 receive)
        (wak trc-testing)
        (spells filesys)
        (spells pathname)
        (dorodango private utils))


(define-test-suite utils-tests
  "Utilities")

(define test-dir (->pathname '((",utils-test.tmp"))))

(define (setup-stage)
  (when (file-exists? test-dir)
    (test-failure "working stage not clear" test-dir))
  (create-directory test-dir))

(define (clear-stage)
  (rm-rf test-dir))

(define-test-case utils-tests lock-file ((setup (setup-stage))
                                         (teardown (clear-stage)))
  (let ((lock-file (pathname-with-file test-dir "lock")))
    (test-eqv #t
      (create-lock-file lock-file))
    (test-eqv #f
      (create-lock-file lock-file))))

(run-test-suite utils-tests)

;; Local Variables:
;; scheme-indent-styles: (trc-testing)
;; End:
