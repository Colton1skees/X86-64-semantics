// Autogenerated using stratification.
requires "x86-configuration.k"

module VPMULUDQ-YMM-YMM-M256
  imports X86-CONFIGURATION

  context execinstr(vpmuludq:Opcode HOLE:Mem, R2:Ymm, R3:Ymm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (vpmuludq:Opcode memOffset( MemOff:MInt):MemOffset, R2:Ymm, R3:Ymm,  .Operands) =>
      loadFromMemory( MemOff, 256) ~>
      execinstr (vpmuludq memOffset( MemOff), R2:Ymm, R3:Ymm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem256:MInt):MemLoadValue ~> execinstr (vpmuludq:Opcode memOffset( MemOff:MInt):MemOffset, R2:Ymm, R3:Ymm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mulMInt( concatenateMInt( mi(32, 0), extractMInt( getParentValue(R2, RSMap), 32, 64)), concatenateMInt( mi(32, 0), extractMInt( Mem256, 32, 64))), concatenateMInt( mulMInt( concatenateMInt( mi(32, 0), extractMInt( getParentValue(R2, RSMap), 96, 128)), concatenateMInt( mi(32, 0), extractMInt( Mem256, 96, 128))), concatenateMInt( mulMInt( concatenateMInt( mi(32, 0), extractMInt( getParentValue(R2, RSMap), 160, 192)), concatenateMInt( mi(32, 0), extractMInt( Mem256, 160, 192))), mulMInt( concatenateMInt( mi(32, 0), extractMInt( getParentValue(R2, RSMap), 224, 256)), concatenateMInt( mi(32, 0), extractMInt( Mem256, 224, 256))))))
      )
    </regstate>
endmodule
