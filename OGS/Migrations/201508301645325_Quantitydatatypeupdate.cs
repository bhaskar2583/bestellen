namespace OGS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Quantitydatatypeupdate : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.ProductsModels", "QuantityAllowedonUI", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.ProductsModels", "QuantityAllowedonUI", c => c.Int(nullable: false));
        }
    }
}
