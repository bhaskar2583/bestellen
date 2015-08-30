namespace OGS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class productsmodifieddefaultssetup : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.ProductsModels", "ModifiedOn", c => c.DateTime());
            AlterColumn("dbo.ProductsModels", "ModifiedBy", c => c.Int());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.ProductsModels", "ModifiedBy", c => c.Int(nullable: false));
            AlterColumn("dbo.ProductsModels", "ModifiedOn", c => c.DateTime(nullable: false));
        }
    }
}
