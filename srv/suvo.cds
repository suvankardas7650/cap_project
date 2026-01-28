using {sap.capire.bookshop as my} from '../db/schema';



service BookService {
    entity Products { key ID: UUID; name: String; author: String; price: Decimal(10,2); stock: Integer; }
    entity Prices { key ID: UUID; product: Association to Products; amount: Decimal(10,2); discount: Decimal(5,2); }
}