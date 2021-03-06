type token =
  | NEXT
  | OR
  | IDENT of (string)
  | PCDATA
  | STAR
  | QUESTION
  | PLUS
  | OPEN
  | CLOSE
  | END

open Parsing;;
# 1 "xml_parser.mly"
(*
 * Xml Light, an small Xml parser/printer with DTD support.
 * Copyright (C) 2003 Nicolas Cannasse (ncannasse@motion-twin.com)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library has the special exception on linking described in file
 * README.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301 USA
 *)	
# 38 "xml_parser.ml"
let yytransl_const = [|
  257 (* NEXT *);
  258 (* OR *);
  260 (* PCDATA *);
  261 (* STAR *);
  262 (* QUESTION *);
  263 (* PLUS *);
  264 (* OPEN *);
  265 (* CLOSE *);
  266 (* END *);
    0|]

let yytransl_block = [|
  259 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\003\000\006\000\006\000\
\007\000\007\000\005\000\005\000\008\000\008\000\008\000\008\000\
\004\000\004\000\009\000\009\000\009\000\000\000"

let yylen = "\002\000\
\002\000\003\000\002\000\003\000\003\000\001\000\003\000\001\000\
\003\000\001\000\002\000\001\000\002\000\002\000\001\000\001\000\
\002\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\022\000\000\000\000\000\
\000\000\012\000\019\000\020\000\021\000\013\000\000\000\014\000\
\011\000\001\000\000\000\000\000\000\000\017\000\002\000\000\000\
\004\000\000\000\005\000\000\000\000\000\007\000\009\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\014\000\009\000\025\000\027\000\010\000\
\015\000"

let yysindex = "\002\000\
\020\255\000\000\024\255\024\255\020\255\000\000\254\254\007\255\
\031\255\000\000\000\000\000\000\000\000\000\000\024\255\000\000\
\000\000\000\000\024\255\020\255\020\255\000\000\000\000\021\255\
\000\000\019\255\000\000\020\255\020\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\005\255\018\255\000\000\000\000\000\000\000\000\
\025\255\000\000\000\000\000\000\000\000\000\000\000\255\000\000\
\000\000\000\000\003\255\000\000\000\000\000\000\000\000\026\255\
\000\000\027\255\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\032\000\000\000\252\255\253\255\010\000\011\000\000\000\
\000\000"

let yytablesize = 40
let yytable = "\016\000\
\018\000\018\000\001\000\003\000\003\000\015\000\015\000\018\000\
\018\000\018\000\022\000\003\000\003\000\015\000\023\000\019\000\
\024\000\026\000\016\000\016\000\029\000\028\000\003\000\004\000\
\024\000\026\000\016\000\005\000\011\000\012\000\013\000\020\000\
\021\000\006\000\008\000\010\000\017\000\030\000\000\000\031\000"

let yycheck = "\004\000\
\001\001\002\001\001\000\001\001\002\001\001\001\002\001\010\001\
\009\001\010\001\015\000\009\001\010\001\009\001\019\000\009\001\
\020\000\021\000\001\001\002\001\002\001\001\001\003\001\004\001\
\028\000\029\000\009\001\008\001\005\001\006\001\007\001\001\001\
\002\001\009\001\009\001\009\001\005\000\028\000\255\255\029\000"

let yynames_const = "\
  NEXT\000\
  OR\000\
  PCDATA\000\
  STAR\000\
  QUESTION\000\
  PLUS\000\
  OPEN\000\
  CLOSE\000\
  END\000\
  "

let yynames_block = "\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'dtd_full_seq) in
    Obj.repr(
# 39 "xml_parser.mly"
  ( _1 )
# 129 "xml_parser.ml"
               : Dtd.dtd_child))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dtd_seq) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_op) in
    Obj.repr(
# 43 "xml_parser.mly"
  ( _3 _1 )
# 137 "xml_parser.ml"
               : 'dtd_full_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'dtd_seq) in
    Obj.repr(
# 45 "xml_parser.mly"
  ( _1 )
# 144 "xml_parser.ml"
               : 'dtd_full_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dtd_item) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_children) in
    Obj.repr(
# 49 "xml_parser.mly"
  ( Dtd.DTDChildren (_1 :: _3) )
# 152 "xml_parser.ml"
               : 'dtd_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dtd_item) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_choice) in
    Obj.repr(
# 51 "xml_parser.mly"
  ( Dtd.DTDChoice (_1 :: _3) )
# 160 "xml_parser.ml"
               : 'dtd_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_item) in
    Obj.repr(
# 53 "xml_parser.mly"
  ( _1 )
# 167 "xml_parser.ml"
               : 'dtd_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dtd_item) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_children) in
    Obj.repr(
# 57 "xml_parser.mly"
  ( _1 :: _3 )
# 175 "xml_parser.ml"
               : 'dtd_children))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_item) in
    Obj.repr(
# 59 "xml_parser.mly"
  ( [_1] )
# 182 "xml_parser.ml"
               : 'dtd_children))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dtd_item) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_choice) in
    Obj.repr(
# 63 "xml_parser.mly"
  ( _1 :: _3 )
# 190 "xml_parser.ml"
               : 'dtd_choice))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_item) in
    Obj.repr(
# 65 "xml_parser.mly"
  ( [_1] )
# 197 "xml_parser.ml"
               : 'dtd_choice))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_full_seq) in
    Obj.repr(
# 69 "xml_parser.mly"
  ( _2 )
# 204 "xml_parser.ml"
               : 'dtd_item))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_member) in
    Obj.repr(
# 71 "xml_parser.mly"
  ( _1 )
# 211 "xml_parser.ml"
               : 'dtd_item))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_op) in
    Obj.repr(
# 75 "xml_parser.mly"
  ( _2 (Dtd.DTDTag _1) )
# 219 "xml_parser.ml"
               : 'dtd_member))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_op) in
    Obj.repr(
# 77 "xml_parser.mly"
  ( _2 Dtd.DTDPCData )
# 226 "xml_parser.ml"
               : 'dtd_member))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 79 "xml_parser.mly"
  ( Dtd.DTDTag _1 )
# 233 "xml_parser.ml"
               : 'dtd_member))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "xml_parser.mly"
  ( Dtd.DTDPCData )
# 239 "xml_parser.ml"
               : 'dtd_member))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'dtd_op_item) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_op) in
    Obj.repr(
# 85 "xml_parser.mly"
  ( (fun x -> _2 (_1 x)) )
# 247 "xml_parser.ml"
               : 'dtd_op))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'dtd_op_item) in
    Obj.repr(
# 87 "xml_parser.mly"
  ( _1 )
# 254 "xml_parser.ml"
               : 'dtd_op))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "xml_parser.mly"
  ( (fun x -> Dtd.DTDZeroOrMore x) )
# 260 "xml_parser.ml"
               : 'dtd_op_item))
; (fun __caml_parser_env ->
    Obj.repr(
# 93 "xml_parser.mly"
  ( (fun x -> Dtd.DTDOptional x) )
# 266 "xml_parser.ml"
               : 'dtd_op_item))
; (fun __caml_parser_env ->
    Obj.repr(
# 95 "xml_parser.mly"
  ( (fun x -> Dtd.DTDOneOrMore x) )
# 272 "xml_parser.ml"
               : 'dtd_op_item))
(* Entry dtd_element *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let dtd_element (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Dtd.dtd_child)
