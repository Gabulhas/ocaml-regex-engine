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
type transition = {mutable next:state pointer; mutable symbol:char}
and state = {mutable isEnd: bool; mutable transitions:transition list;mutable epsilon:transition list}
and nfa = {mutable startState:state; mutable endState:state ; mutable tipo: char}

let createEstado eFinal = 
  {isEnd= eFinal; transitions=[];epsilon=[]}

let createC (c:char) =
  let first = createEstado false in
  let second = createEstado true in
  let newTrans = {next= new_pointer second;symbol=c} in
  first.transitions <- [] @ [newTrans];
  {startState= first ;endState=second;tipo='C'}

let createE =
  let first= createEstado false in
  let second= createEstado true in
  let newTrans = {next=new_pointer second; symbol='\n'} in
  first.epsilon <- [] @ [newTrans];
  {startState=first ;endState=second ;tipo='E'}

let createV = 
  let first = createEstado false in
  {startState=first ;endState=first;tipo='V'}


let addEpsilonTransition from destination=
  from.epsilon <- from.epsilon @ [{next = new_pointer destination;symbol='\n'}];;

(*Tipos de NFAs*)
let concat first second=
  addEpsilonTransition first.endState second.startState;
  first.endState.isEnd <-  false;
  {startState = first.startState; endState=second.endState;tipo='P'}

let union first second=
  let startS = createEstado false in
  let endS = createEstado true in
  first.endState.isEnd<-false;
  second.endState.isEnd<-false;
  addEpsilonTransition startS first.startState; 
  addEpsilonTransition startS second.startState; 
  addEpsilonTransition first.endState endS;
  addEpsilonTransition second.endState endS;

  {startState= startS; endState=endS; tipo = 'U'}

let closure nfaS =
  let startS = createEstado false in
  let endS = createEstado true in

  addEpsilonTransition startS endS;
  addEpsilonTransition startS nfaS.startState;

  addEpsilonTransition nfaS.endState endS;
  addEpsilonTransition nfaS.endState nfaS.startState;
  nfaS.endState.isEnd <- false;
  {startState = startS;endState=endS; tipo='S'}


(*Função que transforma os tipos recursivos numa lista, por exemplo, (A+B)*.D ficaria PSUC(A)C(B)C(D)*)
let rec buildNfa (s:regexp) =
  match s with
  | V       ->  []
  | E       ->  [createE]
  | C  c    ->  [createC c]
  | U (f,g) ->  [{startState = createEstado false; endState =createEstado true; tipo = 'U'}] @
                buildNfa f @ buildNfa g
  | P (f,g) ->  [{startState = createEstado false; endState =createEstado true; tipo = 'P'}]@
                buildNfa f @ buildNfa g
  | S s     ->  [{startState = createEstado false; endState =createEstado true; tipo = 'S'}]@
                buildNfa s

(* exemplo de cÃ³digo para ilustrar o uso da funÃ§Ã£o regexp e o tipo regexp *)




(*Para debugging das listas*)
let debuggingStacks stackA stackB =
  let printChar x =
    print_char x.tipo in

  print_string "\n------Stack A---> ";
  Stack.iter printChar stackA;
  print_string "\n------Stack B---> ";
  Stack.iter printChar stackB;
  print_char '\n';;

let rec string_of_regexp s =
  match s with
  | V       -> "0"
  | E       -> "1"
  | C  c    -> String.make 1 c    
  | U (f,g) -> "("^(string_of_regexp f)^" + "^(string_of_regexp g)^")"
  | P (f,g) -> "("^(string_of_regexp f)^" . "^(string_of_regexp g)^")"
  | S s     -> (string_of_regexp s)^"*"






(*

Transforma Por exemplo PSUCCC em 
C
C
C
U
S
P


*)


let listToStack lista stackA=
  let pushAux a =
    Stack.push a stackA
  in
  List.iter pushAux lista


let stackToList stackA =
  let rec aux stackA =
    if(not (Stack.is_empty stackA)) then [(Stack.pop stackA)] @ (aux stackA)
    else []
  in
  aux stackA

let copiarParaOutraStack stackA stackB =
  Stack.iter (fun x -> Stack.push x stackB) stackA;;
(*
let doesStackContain ele stackA=
  let newStack = Stack.copy stackA in
  let rec aux stackB =
    if(Stack.is_empty stackB) then false
    else begin
      let lastPop = Stack.pop stackB in
      if(lastPop = ele) then true || aux stackB
      else false || aux stackB
    end
  in aux newStack
*)
let doesStackContain ele stackA =
  let contains = ref false in
  let aux stackEle =
    if(stackEle = ele) then contains := true
    else ()
  in
  Stack.iter aux stackA;
  !contains



let doesStackContainEnd stackA=
  let rec aux stackB =
    if(Stack.is_empty stackB) then false
    else begin
      let lastPop = Stack.pop stackB in
      if(lastPop.isEnd) then true || aux stackB
      else false || aux stackB
    end
  in
  aux stackA
(*
let rec compilarStack stackA stackB=

  if(not (Stack.is_empty stackA)) 
  then begin
  if(not (Stack.is_empty stackB)) then debuggingStacks stackA stackB;
  let lastPop = Stack.pop stackA in
  if(Char.compare lastPop.tipo 'C' == 0 || Char.compare lastPop.tipo 'V' == 0 || Char.compare lastPop.tipo 'E' == 0) then

    print_string "No C-----";
    Stack.push (lastPop) stackB;
    compilarStack stackA stackB;
  if(Char.compare lastPop.tipo 'P' == 0) then 
    let dirs = Stack.pop stackB in
    let esqs = Stack.pop stackB in
    print_string "No P-----";
    Stack.push (concat esqs dirs) stackB;
    compilarStack stackA stackB;
  if(Char.compare lastPop.tipo 'U' == 0) then 
    let dirs = Stack.pop stackB in
    let esqs = Stack.pop stackB in
    print_string "No U-----";
    Stack.push (union esqs dirs) stackB;
    compilarStack stackA stackB;
  if(Char.compare lastPop.tipo 'S' == 0) then
    print_string "No S-----";
    Stack.push (closure ( Stack.pop stackB)) stackB;
    compilarStack stackA stackB;
  else 
    print_string "No Fim-----";
  end 

  *)







(*
A forma como os NFAs são processados é a seguinte
Temos uma Pilha "stackA" onde contem todos os NFAs processados pela função 'buildNfa', 
usando o exemplo PSUCCC, sendo P a concatenação, S a estrela de kleen, U a união e C um caracter, ou seja, PSUCCC é equivalente a (A+B)*.C 
(O último elemento é o topo da pilha, e o C contém uma letra)
pilha A -> PSUCCC
pilha B -> Vazia

Vamos tirando da pilha NFAs até chegarmos a um NFA que "Consuma" 1 ou mais NFAs, por exemplo, a União contém 2 NFAs, ou seja consome 2, mesma situação com a Concatenação e a estrela consome 1 apenas
Como o C,E e V não contêm qualquer NFA estes são postos diretamente na pilha B, um por um

(Depois de passarmos por todos os C na pilha A, ou seja, depois de 3 iterações)
Pilha A -> PSU
Pilha B -> CCC       (Basicamente, os caracteres C B A )

Como o U consome dois NFAs, vamos dar pop duas vezes à Pilha B, incluimos os dois pops no U e inserimos o novo U na Pilha B

Pilha A -> PS
Pilha B -> CU        (o caracter C, um NFA U que contém dois NFAs de Caracter, o NFA do caracter A e do B)

(Próxuma iteração)
Como o S consome um NFA, vamos dar Pop uma vez à Pilha B, incluimos o último pop no S e inserimos o novo S na Pilha B

Pilha A -> P
Pilha B -> CS        (o caracter C e um NFA S que contem um NFA U que contém dois NFAs de Caracter, o NFA do caracter A e do B)

(Próxima iteração)

como o P consome dois NFAs, vamos dar pop duas vezes à Pilha B, incluimos os dois pops no P e inserimos o novo P na Pilha B

Pilha A -> Vazia

Pilha B -> P   (um NFA P que contem o caracter C e um NFA S que contem um NFA U que contém dois NFAs de Caracter, o NFA do caracter A e do B )

como a pilha A está vazia, o nosso NFA já está compilado, ou seja, já convertemos o Regex (A+B)*C num NFA

*)


let rec compilarStackO stackA stackB =

  if(not (Stack.is_empty stackA)) 
  then begin
    (*if(not (Stack.is_empty stackB)) then debuggingStacks stackA stackB;*)
    let lastPop = Stack.pop stackA in
    match lastPop.tipo with 
    | 'V'->  Stack.push (lastPop) stackB; compilarStackO stackA stackB;
    | 'E'->  Stack.push (lastPop) stackB; compilarStackO stackA stackB;
    | 'C'->  Stack.push (lastPop) stackB; compilarStackO stackA stackB;
    | 'U'-> 
      let dirs = Stack.pop stackB in
      let esqs = Stack.pop stackB in
      Stack.push (union esqs dirs) stackB;
      compilarStackO stackA stackB;
    | 'P'-> 
      let dirs = Stack.pop stackB in
      let esqs = Stack.pop stackB in
      Stack.push (concat dirs esqs) stackB;
      compilarStackO stackA stackB;
    | 'S'-> 
      Stack.push (closure ( Stack.pop stackB)) stackB;
      compilarStackO stackA stackB;
    | _ -> () 
  end

let compile str =
  print_endline (string_of_regexp str);
  let stackA = Stack.create () in
  let stackB = Stack.create () in
  let stackFinish = listToStack (buildNfa str) stackA in
  let compilarS =compilarStackO stackA stackB in
  (*let teste = debuggingStacks stackA stackB in*)

  Stack.pop stackB;;


(*O primeiro estado não é um apontador.*)


let rec percorrerEpsilon stateS nextStates visited=

  if(List.length stateS.epsilon > 0) then
    let aux trans =
      let st = !^(trans.next) in
      (**not (doesStackContain st visited)*)
      if(not (List.exists (fun x -> x = st) !visited)) then begin
        visited:=!visited@[st];
        percorrerEpsilon st nextStates visited;
      end
    in
    List.iter aux stateS.epsilon;
  else nextStates:=!nextStates @ [stateS] 


(*---------------------------------*)
let search nfa word =
  let currentState = ref [] in
  let nextStates = ref [] in
  let tempStack = ref [] in
  let hasMatch = ref false in
  let hasFailed =  ref true in
  let un =percorrerEpsilon nfa.startState currentState nextStates in
  let inicio = ref !currentState in 

  let stateOfCurrentStates st nextStates symbol =
    if(st.isEnd) then hasMatch:=true;
    if(List.exists (fun x-> x.symbol = symbol) st.transitions) then
      let nextState = !^((List.find (fun x-> x.symbol = symbol) st.transitions).next) in
      percorrerEpsilon nextState nextStates tempStack;
      hasFailed := false;
      tempStack:= [];

  in

  let symbolOfWord symbol =
    nextStates:= [];
    if(not !hasMatch) then begin
      List.iter (fun x->stateOfCurrentStates x nextStates symbol) !currentState;
      if(!hasFailed) then begin
        currentState := [];
        currentState := !inicio;
        hasFailed:=true;
      end
      else begin
        currentState:=[];
        currentState:=!nextStates;
        hasFailed:=true;
      end
    end
  in


  String.iter symbolOfWord word;

  (*hasMatch serve para descobrir um prefixo e o doesStackContainEnd para sufixo*)
  !hasMatch || List.exists (fun x -> x.isEnd = true) !currentState
(*---------------------------------*)

(*
let search nfa word =
  let currentState = Stack.create () in
  let nextStates = Stack.create () in
  let lnStr = String.length word in
  let tempStack = Stack.create () in
  let un =percorrerEpsilon nfa.startState currentState nextStates in
  let stateOfCurrentStates st nextStates symbol =
    if(List.exists (fun x-> x.symbol = symbol) st.transitions) then
      let nextState = !^((List.find (fun x-> x.symbol = symbol) st.transitions).next) in
      percorrerEpsilon nextState nextStates tempStack;
      Stack.clear tempStack;
  in

  let rec symbolOfWordRec word scanPlace =
    print_char (String.get word scanPlace);
    if(scanPlace<(lnStr -1)) then
      begin
        Stack.clear nextStates;
        Stack.iter (fun x->stateOfCurrentStates x nextStates (String.get word scanPlace)) currentState; (*Esta parte tem de percorrer mas também tem de voltar a trás *)
        Stack.clear currentState;
        copiarParaOutraStack nextStates currentState;
        symbolOfWordRec word (scanPlace+1);
      end
  in 


  symbolOfWordRec word 0;
  doesStackContainEnd currentState

  *)
let () =
  let r = regexp Sys.argv.(1) in
  let strS = Sys.argv.(2) in
  let resultingNfa =compile r in
  if(search resultingNfa strS) then print_string "YES" else print_string "NO"

let () = print_string "\n\n"