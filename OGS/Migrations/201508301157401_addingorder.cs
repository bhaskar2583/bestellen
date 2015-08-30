namespace OGS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingorder : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CategoriesModels", "OrderId", c => c.Int(nullable: false));
            AddColumn("dbo.ProductsModels", "OrderId", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.ProductsModels", "OrderId");
            DropColumn("dbo.CategoriesModels", "OrderId");
        }
    }
}
