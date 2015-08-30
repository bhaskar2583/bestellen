namespace OGS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addedofferallowedcolumn : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.ProductsModels", "OffersAllowed", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.ProductsModels", "OffersAllowed");
        }
    }
}
