{ }:

let
f = import ./default.nix {};
in
{components = f.components
; contracts = f.contracts
; contract_lookup = f.support.contract_lookup
; component_lookup = f.support.component_lookup
; fvm = f.fvm;
}
