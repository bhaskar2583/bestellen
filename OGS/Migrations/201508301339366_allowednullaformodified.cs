namespace OGS.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class allowednullaformodified : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.CategoriesModels", "ModifiedOn", c => c.DateTime());
            AlterColumn("dbo.CategoriesModels", "ModifiedBy", c => c.Int());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.CategoriesModels", "ModifiedBy", c => c.Int(nullable: false));
            AlterColumn("dbo.CategoriesModels", "ModifiedOn", c => c.DateTime(nullable: false));
        }
    }
}
