const { expect } = require("chai");

describe("Pokemon contract", function () {
    it("Pokemon Factory shouldn't has pokemons", async function () {

        // const [owner] = await ethers.getSigners(); // Esto lo ocuparán para crear un pokemon

        const PokemonFactory = await ethers.getContractFactory("PokemonFactory");

        const hardhatPokemon = await PokemonFactory.deploy();

        const pokemons = await hardhatPokemon.getAllPokemons();

        expect(pokemons.length).to.equal(0); 
        //igual el array del metodo getallpokemos a 0 y lo igual a 0. Esa es la prueba unitaria
        

    });
}); 