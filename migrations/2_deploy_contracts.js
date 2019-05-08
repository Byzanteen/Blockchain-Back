const Chatgroup = artifacts.require("./Chatgroup.sol")

module.exports = function(deployer) {
	deployer.deploy(Chatgroup);
};