// SPX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PokemonFactory {

  struct BikeMessi {
    
    address owner;
    uint id1;
    uint id2;
    uint id3;
    uint id4;
    string conjunto1;
    string conjunto2;
    string conjunto3;
    string conjunto4;
    

     
    //caracteristicas de la bici
    string name;

    
  }

    BikeMessi[] public conjuntos ; //variable global lista privada pokemon 

    mapping (uint => address) public bikesToOwner; // en posicion 01 (owener) -> guardo hash xasasa32
        //variable global que especifica el dueño
        //el mapping guarda el espacio donde se ubica el pokemon
    
    mapping (address => uint) ownerBikesCount; // en hash xasasa32 voy a guardar un numero 10

        //Cantidad de pokemons 
        //mapping guarda en forma numerica los adress

     function createPokemon (string memory _name, uint _id) public {
        
        // siempre guardo en memoria lo que vaya a usar, en el nodo o los nodos
        // los parametros se diferencian con "_" ej: "_name"
        // el memory siempre va con los parametros o donde solo lo necesite por un tiempo
        // si no vamos a persistir es mejor usar memory

        pokemons.push(Pokemon(_id, _name));
        pokemonToOwner[_id] = msg.sender; //msg.sender dice quien esta invocando el contrato
        ownerPokemonCount[msg.sender]++;
    }

    function getAllPokemons() public view returns (Pokemon[] memory) {
    //view es para decirle a solidity que solo vamos a consultar y no hacemos ningun tipo de modificacion del contrato
    
      return pokemons;
    }


    function getResult() public pure returns(uint product, uint sum){
      uint a = 1; 
      uint b = 2;
      product = a * b;
      sum = a + b; 
   }

} 