namespace OGS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class thinkgotit : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CategoriesModels",
                c => new
                    {
                        CategoryID = c.Int(nullable: false, identity: true),
                        CategoryName = c.String(nullable: false, maxLength: 100),
                        CategoryShortDescription = c.String(nullable: false, maxLength: 250),
                        CategoryLongDescription = c.String(),
                        IsActive = c.Boolean(nullable: false),
                        IsTopCategory = c.Boolean(nullable: false),
                        OffersAllowed = c.Boolean(nullable: false),
                        CategoryImage = c.String(),
                        CreatedOn = c.DateTime(nullable: false),
                        CreatedBy = c.Int(nullable: false),
                        ModifiedOn = c.DateTime(nullable: false),
                        ModifiedBy = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CategoryID);
            
            CreateTable(
                "dbo.ProductsModels",
                c => new
                    {
                        ProductID = c.Int(nullable: false, identity: true),
                        ProductName = c.String(nullable: false, maxLength: 100),
                        ProductShortDescription = c.String(nullable: false, maxLength: 250),
                        ProductLongDescription = c.String(),
                        ProductPrice = c.Decimal(nullable: false, precision: 18, scale: 2),
                        ProductDiscountPrice = c.Decimal(nullable: false, precision: 18, scale: 2),
                        QuantityAvailable = c.Int(nullable: false),
                        QuantityAllowedonUI = c.Int(nullable: false),
                        QuantityMaxAllowedperUser = c.Int(nullable: false),
                        QuantitySold = c.Int(nullable: false),
                        QuantityRemaining = c.Int(nullable: false),
                        ProductImage = c.String(nullable: false),
                        DiscountAllowed = c.Boolean(nullable: false),
                        IsActive = c.Boolean(nullable: false),
                        IsTopProduct = c.Boolean(nullable: false),
                        Rating = c.Int(nullable: false),
                        IsOutofStock = c.Boolean(nullable: false),
                        CreatedOn = c.DateTime(nullable: false),
                        CreatedBy = c.Int(nullable: false),
                        ModifiedOn = c.DateTime(nullable: false),
                        ModifiedBy = c.Int(nullable: false),
                        CategoryID = c.Int(),
                    })
                .PrimaryKey(t => t.ProductID)
                .ForeignKey("dbo.CategoriesModels", t => t.CategoryID)
                .Index(t => t.CategoryID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.ProductsModels", "CategoryID", "dbo.CategoriesModels");
            DropIndex("dbo.ProductsModels", new[] { "CategoryID" });
            DropTable("dbo.ProductsModels");
            DropTable("dbo.CategoriesModels");
        }
    }
}
