.class public Landroidx/slice/builders/ListBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    }
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p3, p4}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(J)V

    return-void
.end method

.method static synthetic access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-object v0
.end method


# virtual methods
.method public addInputRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$InputRangeBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->access$200(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method public addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 3

    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccentColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    return-object p0
.end method

.method public setColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    return-object v0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-void
.end method

.method public setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/List;)V

    return-object p0
.end method
