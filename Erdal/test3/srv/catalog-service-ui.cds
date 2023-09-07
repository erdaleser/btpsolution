using CatalogService from './catalog-service';

annotate CatalogService.Products with {
    Name        @title: 'Name';
    Description @title: 'Description';
    ReleaseDate @title: 'Release Date';
    Rating      @title: 'Rating';
}


annotate CatalogService.ProductDetails with {
    Product  @title: 'Name';
    Details @title: 'Description';
    // ProductID @title: 'Release Date'; 
}


annotate CatalogService.ProductDetails with @(
	UI: { 
		SelectionFields: [ProductID],
		LineItem: [ 
			{Value: Details}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
		],
		FieldGroup#Main: {
			Data: [
				{Value: ProductID}, 
			]
		}
	},
){

}