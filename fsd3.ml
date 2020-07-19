type regexp =
  | V  
  | E
  | C of char
  | U of regexp * regexp 
  | P of regexp * regexp 
  | S of regexp

module Parser_regexp = struct


  module MenhirBasics = struct

    exception Error

    type token = 
      | RPAREN
      | LPAREN
      | EPS
      | EOF
      | EMP
      | CONC
      | CHAR of (
          (char)
        )
      | AST
      | ALT

  end

  include MenhirBasics

  let _eRR =
    MenhirBasics.Error

  type _menhir_env = {
    _menhir_lexer: Lexing.lexbuf -> token;
    _menhir_lexbuf: Lexing.lexbuf;
    _menhir_token: token;
    mutable _menhir_error: bool
  }

  and _menhir_state = 
    | MenhirState12
    | MenhirState7
    | MenhirState6
    | MenhirState1
    | MenhirState0


  let rec _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_term)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
      ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * 'tv_term)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_term)), _, (e2 : 'tv_expr)) = _menhir_stack in
          let _2 = () in
          let _v : 'tv_expr = 
            ( P (e1, e2) )
          in
          _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)) : 'freshtv48)
    | MenhirState12 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : (('freshtv51 * _menhir_state * 'tv_term)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
      ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * 'tv_term)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_term)), _, (e2 : 'tv_expr)) = _menhir_stack in
          let _2 = () in
          let _v : 'tv_expr = 
            ( U (e1, e2) )
          in
          _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
    | MenhirState1 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
      ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : ('freshtv55 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
          ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
              let _3 = () in
              let _1 = () in
              let _v : 'tv_atom = 
                ( e )
              in
              _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)) : 'freshtv56)
        | _ ->
          assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : ('freshtv57 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
          ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
    | MenhirState0 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
      ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
          ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (le : 'tv_expr)) = _menhir_stack in
              let _2 = () in
              let _v : (
                (regexp)
              ) = 
                ( le )
              in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv65) = _menhir_stack in
              let (_menhir_s : _menhir_state) = _menhir_s in
              let (_v : (
                  (regexp)
                )) = _v in
              ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
                    (regexp)
                  )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
                  let (_menhir_s : _menhir_state) = _menhir_s in
                  let ((_1 : (
                      (regexp)
                    )) : (
                         (regexp)
                       )) = _v in
                  (Obj.magic _1 : 'freshtv62)) : 'freshtv64)) : 'freshtv66)) : 'freshtv68)) : 'freshtv70)
        | _ ->
          assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv71 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
          ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | _ ->
      let (() : unit) = () in
      ((Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
        assert false) : 'freshtv75)

  and _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_term -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState12 | MenhirState6 | MenhirState1 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
      ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALT ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv31 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
          ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CHAR _v ->
              _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | EMP ->
              _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | EPS ->
              _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | LPAREN ->
              _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | _ ->
              assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv32)
        | CONC ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
          ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CHAR _v ->
              _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | EMP ->
              _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | EPS ->
              _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | LPAREN ->
              _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | _ ->
              assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv34)
        | EOF | RPAREN ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
          ((let (_menhir_stack, _menhir_s, (e : 'tv_term)) = _menhir_stack in
            let _v : 'tv_expr = 
              ( e )
            in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)
        | _ ->
          assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
          ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
    | MenhirState7 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_factor) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
      ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_factor) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_factor)), _, (e2 : 'tv_term)) = _menhir_stack in
          let _v : 'tv_term = 
            ( P (e1, e2) )
          in
          _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)

  and _menhir_goto_factor : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_factor -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | CHAR _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
      | EMP ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
      | EPS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7
      | LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7
      | ALT | CONC | EOF | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_factor)) = _menhir_stack in
          let _v : 'tv_term = 
            ( e )
          in
          _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)
      | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv30)

  and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | AST ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
          ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_factor = 
              ( S e )
            in
            _menhir_goto_factor _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)) : 'freshtv22)
      | ALT | CHAR _ | CONC | EMP | EOF | EPS | LPAREN | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
          let _v : 'tv_factor = 
            ( e )
          in
          _menhir_goto_factor _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)) : 'freshtv26)

  and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState12 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv9 * _menhir_state * 'tv_term)) = Obj.magic _menhir_stack in
      ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState7 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_factor) = Obj.magic _menhir_stack in
      ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState6 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv13 * _menhir_state * 'tv_term)) = Obj.magic _menhir_stack in
      ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState1 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
      ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState0 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
      (raise _eRR : 'freshtv18)

  and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
      _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | EMP ->
      _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | EPS ->
      _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | LPAREN ->
      _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
      assert (not _menhir_env._menhir_error);
      _menhir_env._menhir_error <- true;
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

  and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
      let _v : 'tv_atom = 
        ( E )
      in
      _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

  and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
      let _v : 'tv_atom = 
        ( V )
      in
      _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

  and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
      (char)
    ) -> 'ttv_return =
    fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
        (char)
      )) : (
           (char)
         )) = _v in
    ((let _v : 'tv_atom = 
        ( C c )
      in
      _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

  and _menhir_discard : _menhir_env -> _menhir_env =
    fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

  and regexpr : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
      (regexp)
    ) =
    fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
        {
          _menhir_lexer = lexer;
          _menhir_lexbuf = lexbuf;
          _menhir_token = _tok;
          _menhir_error = false;
        }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
               let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
               ((let _menhir_env = _menhir_discard _menhir_env in
                 let _tok = _menhir_env._menhir_token in
                 match _tok with
                 | CHAR _v ->
                   _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
                 | EMP ->
                   _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
                 | EPS ->
                   _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
                 | LPAREN ->
                   _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
                 | _ ->
                   assert (not _menhir_env._menhir_error);
                   _menhir_env._menhir_error <- true;
                   _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))





end

module Lexer_regexp = struct

  open Parser_regexp

  exception Error of string


  let __ocaml_lex_tables = {
    Lexing.lex_base =
      "\000\000\245\255\246\255\247\255\248\255\249\255\250\255\251\255\
       \252\255\253\255\254\255\255\255";
    Lexing.lex_backtrk =
      "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255";
    Lexing.lex_default =
      "\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000";
    Lexing.lex_trans =
      "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\011\000\011\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \011\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \004\000\003\000\007\000\009\000\000\000\000\000\008\000\000\000\
       \006\000\005\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
       \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
       \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
       \010\000\010\000\010\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
       \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
       \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
       \010\000\010\000\010\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \002\000";
    Lexing.lex_check =
      "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \000\000\000\000\000\000\000\000\255\255\255\255\000\000\255\255\
       \000\000\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
       \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
       \000\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
       \000\000";
    Lexing.lex_base_code =
      "";
    Lexing.lex_backtrk_code =
      "";
    Lexing.lex_default_code =
      "";
    Lexing.lex_trans_code =
      "";
    Lexing.lex_check_code =
      "";
    Lexing.lex_code =
      "";
  }

  let rec tokenize lexbuf =
    __ocaml_lex_tokenize_rec lexbuf 0
  and __ocaml_lex_tokenize_rec lexbuf __ocaml_lex_state =
    match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
    | 0 ->
      ( tokenize lexbuf )

    | 1 ->
      let
        s
        = Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
      ( CHAR s )

    | 2 ->
      ( ALT )

    | 3 ->
      ( CONC )

    | 4 ->
      ( AST )

    | 5 ->
      ( EMP )

    | 6 ->
      ( EPS )

    | 7 ->
      ( LPAREN )

    | 8 ->
      ( RPAREN )

    | 9 ->
      ( EOF )

    | 10 ->
      ( raise (Error (Printf.sprintf "At offset %d: unexpected character.\n" (Lexing.lexeme_start lexbuf))) )

    | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_tokenize_rec lexbuf __ocaml_lex_state

  ;;
end

(* --------------------------------- fim lexing/parsing code ----------------------------------------------------- *)

open Parser_regexp


(* funÃ§Ã£o principal de leitura de uma expressÃ£o regular (a partir de uma string) *)
let regexp st =
  let linebuf = Lexing.from_string st in
  try regexpr Lexer_regexp.tokenize linebuf
  with _ -> failwith "regexp: input problem"


(* **************************************************************************************************************** *)
(* ********************************************   ComeÃ§ar aqui **************************************************** *)
exception Entrada_invalida of string;;


(* Apontadores*)
(*Referência: https://ocaml.org/learn/tutorials/pointers.html*)
type 'a pointer = Null | Pointer of 'a ref;;
let ( !^ ) = function
  | Null -> invalid_arg "Attempt to dereference the null pointer"
  | Pointer r -> !r;;
let ( ^:= ) p v =
  match p with
  | Null -> invalid_arg "Attempt to assign the null pointer"
  | Pointer r -> r := v;;
let new_pointer x = Pointer (ref x);;


(*tipos e funcoes*)

let globalId= ref 0 (*Cada estado tem uma identificação única para promover uma procuram mais rápida na lista de estados já visitados*)
let tamanhoRegex = ref 0


(* *)

type transition = {mutable next:state pointer; mutable symbol:char} (*Cada transição aponta para um estado e tem um char, sem for epsilon tem // mas só para distinção*)
and state = {mutable isEnd: bool; mutable transitions:transition list;mutable epsilon:transition list;id:int} (*Cada estado tem uma lista de transições de símbolos e de epsilon*)
and nfa = {mutable startState:state; mutable endState:state} (*Isto serve principalmente para a construção recursiva do NFA*)




let addEpsilonTransition from destination=
  from.epsilon <- from.epsilon @ [{next = new_pointer destination;symbol='\\'}];;


let addCharTransition from destination cha =

  from.transitions <- from.transitions @ [{next = new_pointer destination;symbol=cha}];;
(*Nós baseamo-nos nestas duas páginas https://medium.com/swlh/visualizing-thompsons-construction-algorithm-for-nfas-step-by-step-f92ef378581b* e https://deniskyashif.com/2019/02/17/implementing-a-regular-expression-engine/ *)

(*A primeira serviu-nos para entender o que era necessário fazer (NFAs a incluir NFAs ) e o segundo a implementação das mesmas *)


let createEstado eFinal =  (* "Construtor" de um Caracter (C)*)
  globalId:=!globalId +1;
  {isEnd= eFinal; transitions=[];epsilon=[];id=(!globalId)}

(*Tipos de NFAs*)

let createC (c:char) = (*"Construtor" de um NFA de um Caracter*)
  tamanhoRegex:=!tamanhoRegex+1;
  let first = createEstado false in
  let second = createEstado true in
  let newTrans = {next= new_pointer second;symbol=c} in (*A transição representa a transição de um estado para outro de uma letra*)
  first.transitions <- [] @ [newTrans];
  {startState= first ;endState=second}

let createE = (*"Construtor" de um NFA de um Epsilon (E)*)
  let first= createEstado false in
  let second = createEstado true in
  addEpsilonTransition first second; (*A transição representa a transição de um estado para outro de um epsilon*)
  {startState=first ;endState= second}

let createV = (*"Construtor" de um NFA vazio (V)*)
  let first = createEstado false in
  let second = createEstado true in
  {startState=first ;endState=second}


let addEpsilonTransition from destination=
  from.epsilon <- from.epsilon @ [{next = new_pointer destination;symbol='\\'}];;


let addCharTransition from destination cha =

  from.transitions <- from.transitions @ [{next = new_pointer destination;symbol=cha}];;


let concat first second= (*"Construtor" de um NFA de concatenação (P)*)
  addEpsilonTransition first.endState second.startState;   (* por exemplo, a concatenação de um NFA C(A), []--A-->[()] e C(B), []--B-->[()], U(C(A),C(B)) passa a []--A-->[]--1-->[]--B-->[()] *)
  first.endState.isEnd <-  false;
  {startState = first.startState; endState=second.endState}

let union first second= (*"Construtor" de um NFA de concatenação (P)*)
  let startS = createEstado false in
  addEpsilonTransition startS first.startState; 
  addEpsilonTransition startS second.startState; 
  let endS = createEstado true in
  first.endState.isEnd<-false;
  addEpsilonTransition first.endState endS;
  second.endState.isEnd<-false;
  addEpsilonTransition second.endState endS;
  {startState= startS; endState=endS}

(*  
                                                             |--1-->[]--A-->[]--1--|
a uniao de C(A), []--A-->[()] e C(B), []--B-->[()] passa a-->[]                     [()]
                                                             |--1-->[]--B-->[]--1--|
*)

let closure nfaS = (*"Construtor" de um NFA de Esterla de Kleen S*)
  let startS = createEstado false in
  let endS = createEstado true in

  addEpsilonTransition startS endS;
  addEpsilonTransition startS nfaS.startState;

  addEpsilonTransition nfaS.endState endS;
  addEpsilonTransition nfaS.endState nfaS.startState;
  nfaS.endState.isEnd <- false;
  {startState = startS;endState=endS}

(*
                                                                  |---1----
                                                                  v       |
por exemplo,a estrela de um NFA C(A), S(C(A)) passa a -->[]--1-->[]--A-->[]--1-->[()]
                                                          |                        ^
                                                          --------------1----------|
*)


(*Construção do NFA recursivamente, por exemplo (A.B)*, é equivalente ao tipo recursivo

S(P(C(A),C(B)))

ou seja, nós construimos primeiro o C(A), depois o C(B), incluimos estes na construção de concatentação
e esta concatenação incluimos na construção de uma Estrela de Kleen
*)
let buildNfa s =
  let rec buildNfaS s =
    match s with
    | V       ->  createV
    | E       ->  createE
    | C  c    ->  createC c
    | U (f,g) ->  union (buildNfaS f) (buildNfaS g)
    | P (f,g) ->  concat (buildNfaS f) (buildNfaS g)
    | S s     ->  closure (buildNfaS s)
  in
  buildNfaS s

(*Para debugging das listas*)

let rec string_of_regexp s =
  match s with
  | V       -> "0"
  | E       -> "1"
  | C  c    -> String.make 1 c    
  | U (f,g) -> "("^(string_of_regexp f)^" + "^(string_of_regexp g)^")"
  | P (f,g) -> "("^(string_of_regexp f)^" . "^(string_of_regexp g)^")"
  | S s     -> (string_of_regexp s)^"*"

(*Debugging*)

let print_bool boo =
  if(boo) then print_string "true"
  else print_string "false"

let remove_elt e l =
  let rec go l acc = match l with
    | [] -> List.rev acc
    | x::xs when e.id = x.id -> go xs acc
    | x::xs -> go xs (x::acc)
  in go l []

(*---------------------------------*)

let hasMatch = ref false (*Flag que indica que ou já estivemos num estado final ou uma lista contem um estado final, e que já houve pelo menos um match*)


(*Parte deste código é inspirado neste artigo https://deniskyashif.com/2019/02/17/implementing-a-regular-expression-engine/ , mais propriamente no algoritmo "Being in multiple states at once"
com várias alterações para ser mais rápida a procura, e para procurar uma substring
*)


(*

percorrerEpsilon percorre todos os epsilons até encontrar estados em que não possa saltar mais, ou seja, quando encontra um estado com transição de simbolo ou o final
por exemplo, (A+A)*CC, entre o estado inicial, ele vai saltar 4 epsilons, até chegar dois estados com uma transição A, e um de Caracter
Como os estados epsilons não têm qualquer valor e só serve para transitar, não para verificar a existência de um símbolo (por exemplo) esta é a razão porque os saltamos
os next states são todos os estados de transição com simbolo que nós conseguimos chegar a partir do estado atual
a lista "visited" contém os IDs dos estados por onde já passamos (IDs em vês de States porque a procura é mais rápida) para evitar um ciclo infinito
todos os estados na lista nextState "passam" por esta função porque podemos estar em vários estados ao mesmo tempo


*)
let rec percorrerEpsilon stateS nextStates visited=
  if(List.length stateS.epsilon > 0) then (*Se contém pelo menos uma transição epsilon, vemos a que estado de transição com simbolo chegamos*)

    let aux trans =
      let st = !^(trans.next) in
      if(not (List.exists (fun x -> x = st.id) !visited)) then begin (*Se ele ainda não foi visitado*)
        visited := !visited @ [st.id];
        if(st.isEnd) then hasMatch:=true;
        percorrerEpsilon st nextStates visited; (*Fazemos isto recursivamente, porque podemos ter vários estados de transiçao epsilon seguidos, por exemplo 11111111111111111A*)
      end
    in
    List.iter aux stateS.epsilon;
  else nextStates:=stateS :: !nextStates  (*Caso não tenha transições epsilon nós adicionamos  à lista next, pois poderão ser estados que tenham transições com símbolos*)





let search nfa word =
  let currentState = ref [] in (*Lista que contem todos os estados onde nós estamos no momento*)
  let nextStates = ref [] in (*Lista que contem todos os estados que possivelmente terão uma transição com um símbolo igual à letra onde estamso atualmente*)
  percorrerEpsilon nfa.startState currentState (ref []); (*Para começar nós vemos que estados de transição de simbolo que conseguimos chegar a partir do primeiro estado do NFA resultante da construção *)
  let restart = !currentState in (*Estados que conseguimos chegar a partir do primeiro estado, é usado mais tarde*)
  let visited = ref [] in (*Lista que contem estados visitados*)
  let stateOfCurrentStates st nextStates symbol =
    (*if(!hasMatch) then print_string "HAS MATCH";*)
    (*Printf.printf "Next: %d  Current:%d  Visited %d" (List.length !nextStates) (List.length !currentState) (List.length !visited);*)
    let nextEle = List.find_opt (fun x-> x.symbol = symbol)  st.transitions  in (*Procuramos se um dos estados onde estamso atualmente contém uma transição com um símbolo igual ao que estamos atualmente*)
    if(not (nextEle = None)) then
      let nextState = !^((Option.get nextEle).next) in
      if(nextState.isEnd || !hasMatch) then hasMatch:=true (*Se o estado é final já podemos dizer que temos um match, por exemplo, quando temos a expressão regular (AA* ), e a cadeia CCCCAAAAAAAAAA, nós depois de termos percorrido CCCCAA já temos um match e não precisamos de encontrar mais estados   *)
      else begin percorrerEpsilon nextState nextStates (visited);  end (*Caso o simbolo corresponda mas não temos match, vamos procurar todos os estados com transições de simbolo que conseguimos alcançar a partir deste*)

  in


  let symbolOfWord symbol = (*Função auxiliar de iteração linear pela cadeia de adn*)
    if(not (!hasMatch)) then begin (*Caso tenhamos match é desnecessário continuar a percorrer o NFA*)
      nextStates:= [];  
      List.iter (fun x->
          stateOfCurrentStates x nextStates symbol
        ) (!currentState);  (* Testamos se há estados na currentState que tenham uma transição com um símbolo igual ao caracter atual, e percorremos os mesmos caso tenham*)

      hasMatch := !hasMatch || List.exists (fun x-> x.isEnd) !currentState ; (*Caso um dos estados atuais seja final já temos match*)
      if(not (List.length !nextStates = 0) ) then (*Caso PELO MENOS um estado dos atuais tenha uma transição de simbolo igual ao caracter atual*)
        begin

          currentState:=!nextStates; (*Os estados atuais passam a ser iguais ao que avançamos anteriormente, na iteração do currentState pela função stateOfCurrentStates*)
          currentState := !currentState @ restart; (*Acrescentamos os estados que alcançamos a partir do estado inicial do NFA para não perdermos informação*)
          visited:=[]; 
        end
      else 
        currentState:=restart; (*Caso não haja nenhum estado na lista NextState, ou seja, não houve nenhuma transição dos estados do currentState a dar match com o nosso caracter, nós voltamos ao inicio do automato*)
    end
  in


  String.iter symbolOfWord word;

  List.exists (fun x -> x.isEnd = true) !currentState || !hasMatch ||  List.exists (fun x -> x.isEnd = true) !nextStates 

let isAdn word = (*Verificamos se existe um nucleotido não válido*)
  let flag = ref true in
  let aux s =
    if(Char.equal s '\n' ||Char.equal s 'A' || Char.equal s 'C'|| Char.equal s 'G' || Char.equal s 'T') then ()
    else flag:=false
  in
  String.iter aux word;
  !flag

let padrao = read_line ();;
let adn = read_line ();;
let tamanhoAdn = String.length adn;;

let () =


  let r = regexp padrao in (*Parsing do REGEX usando a função fornecida pelo professor*)

  let strS = String.trim adn in

  let resultingNfa =buildNfa r in (*Construção do NFA a partir do r*)
  let lastNfa = resultingNfa in
  if(search lastNfa strS) then print_string "YES\n" else print_string "NO\n";
