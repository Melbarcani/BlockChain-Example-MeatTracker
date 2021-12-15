/**import "./ProductFactory"

const ProductFactory = artifacts.require("ProductFactory");


contract("ProductFactory", (accounts) => {
    let[Alice, Bob] = accounts;

    it("should be able to create a new animal",async () => {
        const contractInstance = await ProductFactory.new();
        const result = await contractInstance.createAnimal(animalNames[0], {from: alice});
        assert.equal(result.receipt.status, true);
        assert.equal(result.logs[0].args.name,animalNames[0]);
    })
})
 **/