[
  (compound_stmt)
  (struct_body)
  (enum_body)
  (fn_parameter_list)
] @indent

[
  "case"
  "}"
  "]"
  ")"
] @outdent

(if_stmt
  body: (_) @indent
  (#not-kind-eq? @indent "compound_statement")
  (#set! "scope" "all"))
(while_stmt
  body: (_) @indent
  (#not-kind-eq? @indent "compound_statement")
  (#set! "scope" "all"))
(for_stmt
  body: (_) @indent
  (#not-kind-eq? @indent "compound_statement")
  (#set! "scope" "all"))

(fn_parameter_list
  . (parameter) @anchor
  (#set! "scope" "tail")) @align
(call_invocation
  . (_) @anchor
  (#set! "scope" "tail")) @align
; These are a bit opinionated since some people just indent binary/ternary expressions spanning multiple lines.
; Since they are only triggered when a newline is inserted into an already complete binary/ternary expression,
; this should happen rarely, so it is not a big deal either way.
; Additionally, adding these queries has the advantage of preventing such continuation lines from being used
; as the baseline when the `hybrid` indent heuristic is used (which is desirable since their indentation is so inconsistent). 
(binary_expr
  (#set! "scope" "tail")) @anchor @align
(ternary_expr
  "?" @anchor
  (#set! "scope" "tail")) @align
