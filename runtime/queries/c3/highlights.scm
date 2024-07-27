[
 "module"
 "import"
 "asm"
] @keyword

(attribute) @keyword

[
  "fn"
  "macro"
] @keyword.function

[
  "enum"
  "struct"
  "union"
  "def"
  "fault"
  "var"
  "bitstruct"
  "interface"
] @keyword.storage.type

[
  "extern"
  "const"
  "tlocal"
  "distinct"
  "inline"
  "static"
] @keyword.storage.modifier

[
  "break"
  "continue"
  "try"
  "catch"
  "defer"
  "nextcase"
] @keyword.control

[
  "do"
  "for"
  "foreach"
  "foreach_r"
  "while"
] @keyword.control.repeat

[
  "if"
  "else"
  "switch"
  "case"
  "default"
  "assert"
] @keyword.control.conditional

"return" @keyword.control.return

[
  "$alignof"
  "$assert"
  "$case"
  "$default"
  "$defined"
  "$echo"       
  "$embed"      
  "$exec"
  "$else"       
  "$endfor"     
  "$endforeach" 
  "$endif"
  "$endswitch"  
  "$eval"       
  "$evaltype"   
  "$error"
  "$extnameof"  
  "$for"        
  "$foreach"    
  "$if"
  "$include"    
  "$nameof"     
  "$offsetof"   
  "$qnameof"
  "$sizeof"     
  "$stringify"  
  "$switch"     
  "$typefrom"
  "$typeof"     
  "$vacount"    
  "$vatype"     
  "$vaconst"
  "$varef"      
  "$vaarg"      
  "$vaexpr"     
  "$vasplat"
] @keyword.directive

[
  "+"
  "-"
  "*"
  "/"
  "++"
  "--"
  "%"
  "=="
  "!="
  ">"
  "<"
  ">="
  "<="
  "&&"
  "||"
  "!"
  "&"
  "|"
  "^"
  "~"
  "<<"
  ">>"
  "="
  "+="
  "-="
  "*="
  "/="
  "%="
  "<<="
  ">>="
  "&="
  "^="
  "|="
  "?"
] @operator

(type_ident) @type
(base_type_name) @type.builtin

(line_comment) @comment.line
(block_comment) @comment.block
(doc_comment) @comment.block.documentation

(const_ident) @constant
(integer_literal) @constant.numeric
(real_literal) @constant.numeric
"null" @constant.builtin
["true" "false"] @constant.builtin.boolean

(macro_declaration
  (func_header
    name: (ident) @function.macro))
(macro_declaration
  (macro_header
    name: (ident) @function.macro))
(func_definition
  (func_header
    name: (ident) @function))
(call_expr
  function: (ident) @function)
(call_expr
  (field_expr
    field: (access_ident) @function.method))

(macro_parameter_list
  (parameter
    (ident) @variable.parameter))
(fn_parameter_list
  (parameter
    (ident) @variable.parameter))

(ternary_expr ":" @operator)

"..." @punctuation
["," "." ":" ";" "::"] @punctuation.delimiter
["(" ")" "[" "]" "{" "}"] @punctuation.bracket

(string_literal) @string
(raw_string_literal) @string
(char_literal) @constant.character
(escape_sequence) @constant.character.escape

(struct_member_declaration
  (identifier_list
    (ident) @variable.other.member))
(initializer_list
  (arg
    (param_path
      (param_path_element
        (ident) @variable.other.member))))
