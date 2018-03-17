pragma solidity ^0.4.0;
contract Tendencias {
    
     uint id;
    bool active;
    string name;
    string surname;
    string password; 
    string email; 

  /*  struct User {
        uint id;
        bool active;
        string name;
        string surname;
        string password; 
        string email; 
    }
    
    User usr; 
    
    struct Document
    {
        uint id; 
        uint document_name;
        string hash; 
        string document_code; 
    } */
    
    event UserCreated (
        uint id,
        bool active,
        string name,
        string surname,
        string password,
        string email
        ); 
    
    function createUser( uint _id, bool _active, string _name, string _surname,string _password, string _email) public
    {
        id = _id; 
        active = _active; 
        name = _name; 
        surname =  _surname;
        password =  _password; 
        email= _email;  
        
        UserCreated(_id, _active, _name, _surname, _password, _email);
        
    }
    
    // trying to get struct but getting "error": "Failed to decode output: Error: Unsupported or invalid type: tuple"
    function getUser() public constant returns (uint, bool, string, string,string, string){
        return (id, active, name, surname, password, email);
    }

}