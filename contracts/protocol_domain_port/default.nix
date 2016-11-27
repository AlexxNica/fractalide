{ contract, contracts }:

contract rec {
  src = ./.;
  importedContracts = with contracts; [];
  schema = with contracts; ''
    @0xd41e6861b9d35c4b;

     struct ProtocolDomainPort {
             protocol @0 :Text;
             domain @1 :Text;
             port @2 :UInt32;
     }
  '';
}
