const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("HoraCertakModule", (m) => {
  
  const horaCerta = m.contract("HoraCerta");

  return { horaCerta };
});