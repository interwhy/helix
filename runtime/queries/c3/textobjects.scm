(parameter_list 
  ((_) @parameter.inside . ","? @parameter.around) @parameter.around)

(call_invocation
  ((_) @parameter.inside . ","? @parameter.around) @parameter.around)

(comment) @comment.inside

(comment)+ @comment.around

(initializer_list
  (_) @entry.around)
