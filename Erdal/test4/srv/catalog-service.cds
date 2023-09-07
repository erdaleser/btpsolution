using {NorthWind as external} from './external/NorthWind.csn';
@path: 'service/btp_catalog' 
service CatalogService {

    @readonly 
    entity Products as projection on external.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    };
    @readonly
    entity ProductDetails as projection on external.ProductDetails;

    @readonly
    entity Categories as projection on external.Categories;

}