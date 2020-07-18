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

let globalId= ref 0
let tamanhoRegex = ref 0

type transition = {mutable next:state pointer; mutable symbol:char}
and state = {mutable isEnd: bool; mutable transitions:transition list;mutable epsilon:transition list;id:int}
and nfa = {mutable startState:state; mutable endState:state}




let addEpsilonTransition from destination=
  from.epsilon <- from.epsilon @ [{next = new_pointer destination;symbol='\\'}];;


let addCharTransition from destination cha =

  from.transitions <- from.transitions @ [{next = new_pointer destination;symbol=cha}];;
(*Nós baseamo-nos nestas duas páginas https://medium.com/swlh/visualizing-thompsons-construction-algorithm-for-nfas-step-by-step-f92ef378581b* e https://deniskyashif.com/2019/02/17/implementing-a-regular-expression-engine/ *)

(*A primeira serviu-nos para entender o que era necessário fazer (NFAs a incluir NFAs ) e o segundo a implementação das mesmas *)
let createEstado eFinal = 
  globalId:=!globalId +1;
  {isEnd= eFinal; transitions=[];epsilon=[];id=(!globalId)}

let createC (c:char) =
  tamanhoRegex:=!tamanhoRegex+1;
  let first = createEstado false in
  let second = createEstado true in
  let newTrans = {next= new_pointer second;symbol=c} in
  first.transitions <- [] @ [newTrans];
  {startState= first ;endState=second}

let createE =
  let first= createEstado false in
  let second = createEstado true in
  addEpsilonTransition first second;
  {startState=first ;endState= first}

let createV = 
  let first = createEstado false in
  let second = createEstado true in
  {startState=first ;endState=second}


let addEpsilonTransition from destination=
  from.epsilon <- from.epsilon @ [{next = new_pointer destination;symbol='\\'}];;


let addCharTransition from destination cha =

  from.transitions <- from.transitions @ [{next = new_pointer destination;symbol=cha}];;

(*Tipos de NFAs*)
let concat first second=
  addEpsilonTransition first.endState second.startState;
  first.endState.isEnd <-  false;
  {startState = first.startState; endState=second.endState}

let union first second=
  let startS = createEstado false in
  addEpsilonTransition startS first.startState; 
  addEpsilonTransition startS second.startState; 
  let endS = createEstado true in
  first.endState.isEnd<-false;
  addEpsilonTransition first.endState endS;
  second.endState.isEnd<-false;
  addEpsilonTransition second.endState endS;
  {startState= startS; endState=endS}

let closure nfaS =
  let startS = createEstado false in
  let endS = createEstado true in

  addEpsilonTransition startS endS;
  addEpsilonTransition startS nfaS.startState;

  addEpsilonTransition nfaS.endState endS;
  addEpsilonTransition nfaS.endState nfaS.startState;
  nfaS.endState.isEnd <- false;
  {startState = startS;endState=endS}






(*Função que transforma os tipos recursivos numa lista, por exemplo, (A+B)*.D ficaria PSUC(A)C(B)C(D)*)
(*NOTA:Segundo a aula do profesor isto dá para pôr tudo num só match, não é necessário pôr isto numa pilha, possivelmente mais rápido.*)
(*
let rec buildNfa s =
  tamanhoRegex:= !tamanhoRegex+1;

  match s with
  | V       ->  [createV]
  | E       ->  [createE]
  | C  c    ->  [createC c]
  | U (f,g) ->  [{startState = createEstado false; endState =createEstado true; tipo = 'U'}] @
                buildNfa f @ buildNfa g
  | P (f,g) ->  [{startState = createEstado false; endState =createEstado true; tipo = 'P'}]@
                buildNfa f @ buildNfa g
  | S s     ->  [{startState = createEstado false; endState =createEstado true; tipo = 'S'}]@
                buildNfa s

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


let print_bool boo =
  if(boo) then print_string "true"
  else print_string "false"

let hasMatch = ref false
let rec percorrerEpsilon stateS nextStates visited=
  (*
  print_string "Tmh: ";
  print_int (List.length !visited);
  print_char '\n';
  print_bool !hasMatch; 
  *)
  if(List.length stateS.epsilon > 0) then

    let aux trans =
      let st = !^(trans.next) in
      if(not (List.exists (fun x -> x = st.id) !visited)) then begin
        visited := !visited @ [st.id];
        if(st.isEnd) then hasMatch:=true;
        percorrerEpsilon st nextStates visited;
      end
    in
    List.iter aux stateS.epsilon;
  else nextStates:=!nextStates @ [stateS] 

(*---------------------------------*)
let search nfa word =
  let currentState = ref [] in
  let nextStates = ref [] in
  let visited = ref [] in
  percorrerEpsilon nfa.startState currentState (ref []);
  let restart = !currentState in
  let stateOfCurrentStates st nextStates symbol =
    (*print_string "YE";*)
    (*if(!hasMatch) then print_string "HAS MATCH";*)
    let nextEle = List.find_opt (fun x-> x.symbol = symbol)  st.transitions  in
    if(not (nextEle = None)) then
      let nextState = !^((Option.get nextEle).next) in
      print_char symbol;
      if(nextState.isEnd || !hasMatch) then hasMatch:=true
      else begin percorrerEpsilon nextState nextStates visited; visited := []; end


  in

  let symbolOfWord symbol =

    nextStates:= [];
    List.iter (fun x->
        stateOfCurrentStates x nextStates symbol
      ) (!currentState);
    if(not (List.length !nextStates = 0) ) then
      currentState:=!nextStates
    else 
      currentState:=restart;
    nextStates:=[];
  in


  String.iter symbolOfWord word;

  List.exists (fun x -> x.isEnd = true) !currentState || !hasMatch


(*
  let rec findNextStates st nextStates visited =
  if(st.epsilon = []) then
    nextStates:= !nextStates @ [st]
  else
    List.iter (fun x -> 
        let ss = !^(x.next) in
        if(not (List.exists (fun a -> a.id = ss.id) !visited)) 
        then visited := !visited @ [ss];
        findNextStates ss nextStates visited;

      ) (st.epsilon)

  let search nfa word = 
  let currentStates = ref [] in
  findNextStates nfa.startState currentStates (ref []);

  String.iter (fun symbol -> 
      let nextStates = ref [] in
      List.iter(fun state ->
          let nextEle = List.find_opt (fun x-> x.symbol = symbol) (state.transitions) in
          if(not (nextEle = None)) then
            let nextState = !^((Option.get nextEle).next) in
            findNextStates nextState nextStates (ref[]);
        ) (!currentStates);


      currentStates := !nextStates; 
    ) word;
  List.exists (fun x -> x.isEnd = true) !currentStates


*)
let isAdn word =
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
(*if(tamanhoAdn<0|| tamanhoAdn>5000) then raise (Entrada_invalida "O ramo de ADN só pode ter um tamanho entre 0 e 5000");;*)
(*if(not (isAdn adn)) then raise (Entrada_invalida "O ramo de ADN só pode os Caracteres 'A' 'C' 'G' 'T'");;*)

(*
let () =
  let totalTime = Sys.time()in
  let regexStart = Sys.time() in
  let r = regexp (String.concat "" ["(A+G+C+T)*";padrao;"(A+G+C+T)*"])  in
  Printf.printf "\nRegex Parsing Time elapsed %g s\n" (Sys.time() -. regexStart);
  let compileStart= Sys.time() in
  let strS = adn in
  let resultingNfa =buildNfa r in
  Printf.printf "\nCompiling Time elapsed %g s\n" (Sys.time() -. compileStart);
  let matchTime= Sys.time() in
  if(search resultingNfa strS) then print_string "YES\n" else print_string "NO\n";
  Printf.printf "\nMatching Time elapsed %g s\n" (Sys.time() -. matchTime);
  Printf.printf "\nTotal Time elapsed %g s\n" (Sys.time() -. totalTime);

  *)
let () =

  let totalTime = Sys.time()in

  let r = regexp padrao in

  let strS = String.trim adn in

  let resultingNfa =buildNfa r in
  let lastNfa = resultingNfa in
  if(search lastNfa strS) then print_string "YES\n" else print_string "NO\n";

  Printf.printf "\nTotal Time elapsed %g s\n" (Sys.time() -. totalTime);

(*
let () = 

  let r = regexp (String.concat "" ["(A+G+C+T)*";padrao;"(A+G+C+T)*"]) in

  let strS = adn in

  let resultingNfa =buildNfa r in
  (*if(!(tamanhoRegex)<0|| (!tamanhoRegex)>100) then raise (Entrada_invalida "O padrão só pode ter um tamanho entre 0 e 100");*)

  if(search resultingNfa strS) then print_string "YES\n" else print_string "NO\n";
  *)