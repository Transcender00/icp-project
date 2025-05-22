import Text "mo:base/Text";
import Bool "mo:base/Bool";


module {


    public type Category = {
        #Business;
        #Personal;
        #Academic;
        #Family;
        #Other;
    };
    
    public type Todo = {
        id : Nat;
        task : Text;
        category : Category;
        done : Bool;

    };
    

};