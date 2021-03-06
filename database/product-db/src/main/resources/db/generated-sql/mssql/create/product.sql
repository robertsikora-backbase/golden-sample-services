
CREATE SEQUENCE seq_product START WITH 1 INCREMENT BY 5
GO

CREATE TABLE product (id bigint NOT NULL, create_date datetime NOT NULL, name nvarchar(255), weight smallint, CONSTRAINT PK_PRODUCT PRIMARY KEY (id, create_date))
GO

DECLARE @TableName SYSNAME set @TableName = N'product'; DECLARE @FullTableName SYSNAME; SET @FullTableName = N'dbo.product';DECLARE @MS_DescriptionValue NVARCHAR(3749); SET @MS_DescriptionValue = N'Table to store the Products from our store';DECLARE @MS_Description NVARCHAR(3749) set @MS_Description = NULL; SET @MS_Description = (SELECT CAST(Value AS NVARCHAR(3749)) AS [MS_Description] FROM sys.extended_properties AS ep WHERE ep.major_id = OBJECT_ID(@FullTableName) AND ep.name = N'MS_Description' AND ep.minor_id=0); IF @MS_Description IS NULL BEGIN EXEC sys.sp_addextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName; END ELSE BEGIN EXEC sys.sp_updateextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName; END
GO

DECLARE @TableName SYSNAME set @TableName = N'product'; DECLARE @FullTableName SYSNAME set @FullTableName = N'dbo.product'; DECLARE @ColumnName SYSNAME set @ColumnName = N'create_date'; DECLARE @MS_DescriptionValue NVARCHAR(3749); SET @MS_DescriptionValue = N'The date when the product was created';DECLARE @MS_Description NVARCHAR(3749) set @MS_Description = NULL; SET @MS_Description = (SELECT CAST(Value AS NVARCHAR(3749)) AS [MS_Description] FROM sys.extended_properties AS ep WHERE ep.major_id = OBJECT_ID(@FullTableName) AND ep.minor_id=COLUMNPROPERTY(ep.major_id, @ColumnName, 'ColumnId') AND ep.name = N'MS_Description'); IF @MS_Description IS NULL BEGIN EXEC sys.sp_addextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName, @level2type = N'COLUMN', @level2name = @ColumnName; END ELSE BEGIN EXEC sys.sp_updateextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName, @level2type = N'COLUMN', @level2name = @ColumnName; END
GO

DECLARE @TableName SYSNAME set @TableName = N'product'; DECLARE @FullTableName SYSNAME set @FullTableName = N'dbo.product'; DECLARE @ColumnName SYSNAME set @ColumnName = N'name'; DECLARE @MS_DescriptionValue NVARCHAR(3749); SET @MS_DescriptionValue = N'The name of the product';DECLARE @MS_Description NVARCHAR(3749) set @MS_Description = NULL; SET @MS_Description = (SELECT CAST(Value AS NVARCHAR(3749)) AS [MS_Description] FROM sys.extended_properties AS ep WHERE ep.major_id = OBJECT_ID(@FullTableName) AND ep.minor_id=COLUMNPROPERTY(ep.major_id, @ColumnName, 'ColumnId') AND ep.name = N'MS_Description'); IF @MS_Description IS NULL BEGIN EXEC sys.sp_addextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName, @level2type = N'COLUMN', @level2name = @ColumnName; END ELSE BEGIN EXEC sys.sp_updateextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName, @level2type = N'COLUMN', @level2name = @ColumnName; END
GO

DECLARE @TableName SYSNAME set @TableName = N'product'; DECLARE @FullTableName SYSNAME set @FullTableName = N'dbo.product'; DECLARE @ColumnName SYSNAME set @ColumnName = N'weight'; DECLARE @MS_DescriptionValue NVARCHAR(3749); SET @MS_DescriptionValue = N'The weight of the product in kgs';DECLARE @MS_Description NVARCHAR(3749) set @MS_Description = NULL; SET @MS_Description = (SELECT CAST(Value AS NVARCHAR(3749)) AS [MS_Description] FROM sys.extended_properties AS ep WHERE ep.major_id = OBJECT_ID(@FullTableName) AND ep.minor_id=COLUMNPROPERTY(ep.major_id, @ColumnName, 'ColumnId') AND ep.name = N'MS_Description'); IF @MS_Description IS NULL BEGIN EXEC sys.sp_addextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName, @level2type = N'COLUMN', @level2name = @ColumnName; END ELSE BEGIN EXEC sys.sp_updateextendedproperty @name  = N'MS_Description', @value = @MS_DescriptionValue, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = @TableName, @level2type = N'COLUMN', @level2name = @ColumnName; END
GO

CREATE NONCLUSTERED INDEX ix_product_create_date ON product(create_date DESC)
GO

ALTER TABLE product ADD additions varchar(MAX)
GO

